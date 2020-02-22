
import csv
import datetime
import io
import logging
import argparse

# --------------------------------------------------------------------------------
# Set default arguments
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# Set variables
# --------------------------------------------------------------------------------
attribute_list = []


# --------------------------------------------------------------------------------
# Set GCP logging
# --------------------------------------------------------------------------------

logger = logging.getLogger('signal_view')

# --------------------------------------------------------------------------------
# Functions
# --------------------------------------------------------------------------------


def read_signal_list(signal_list_file):
    """
    
    """
    signal_list = []
    logger.info('Reading signal_list_file from : %s' % str(signal_list_file))
    try:
        with io.open(signal_list_file, 'rt', encoding='utf-8') as csv_file:
            csv_reader = csv.reader(csv_file)
            #next(csv_reader)  # skip the headers
            for row in csv_reader:
                logger.info(row)
                
                signal_list.append(row)
            """
            for i in range(0, len(signal_list)):
                print(i, signal_list[i])
            """

            return signal_list

    except IOError as e:
        logger.error('Error opening table_list_file %s: ' % str(
            signal_list_file), e)

def write_signal_sql(str_list, file_name):
    """
    
    """
    logger.info('Writing signal_sql_file into : %s' % file_name)

    fo = open(file_name, 'w')

    for row in str_list:
        fo.write(row + "\n")

    fo.close()
        

def write_SQL_string(sig_no, col_no):
   
    statement = ""
    sig_no_str = ""

    for y in sig_no:
       sig_no_str = sig_no_str + y + ","
                
    sig_no_str = sig_no_str[0:len(sig_no_str)-1]

    statement = "       WHEN sig_no IN ({} ) THEN {}".format(sig_no_str, col_no)

    return(statement)


def parse_signal_list(signal_list):

    first_row = True
    attr = ""
    col_no = ""
    attr = ""
    sig_no_str = ""
    sql_Statement = ""
    sig_no = []
    sql_str = []

    sql_Statement = "   CASE"
    sql_str.append(sql_Statement)
    
    for x in signal_list:
        logger.info(x)

        is_remain = False

        if (x[0] == attr and x[1] == col_no) or first_row:
        
            attr = x[0]
            col_no = x[1]
            sig_no.append(x[2])

            if first_row:
                attribute_list.append(attr)

            first_row = False
            is_remain = True

        elif x[0] == attr and x[1] != col_no:

            sql_Statement = write_SQL_string (sig_no, col_no)
            sql_str.append(sql_Statement)

            sig_no.clear()

            col_no = x[1]
            sig_no.append(x[2])
            is_remain = True
            
        elif x[0] != attr:

            sql_Statement = write_SQL_string (sig_no, col_no)
            sql_str.append(sql_Statement)

            sql_Statement = "       ELSE NULL"
            sql_str.append(sql_Statement)
            
            sql_Statement = "   END as {}, \n".format(attr)
            sql_str.append(sql_Statement)

            sql_Statement = "   CASE"
            sql_str.append(sql_Statement)

            attr   = x[0]
            col_no = x[1]
            sig_no.clear()
            sig_no.append(x[2])

            attribute_list.append(x[0])
            is_remain = True        
        
    if is_remain:
        sql_Statement = write_SQL_string (sig_no, col_no)
        sql_str.append(sql_Statement)

    sql_Statement = "       ELSE NULL"
    sql_str.append(sql_Statement)

    sql_Statement = "   END as {} \n".format(attr)
    sql_str.append(sql_Statement)

    return sql_str

def main(file_name, sql_file, wait=True):

    signal_list = read_signal_list(file_name)

    str_list = parse_signal_list(signal_list)

    for row in attribute_list:
        print(row)

    for row in str_list:
        print(row)
    
    write_signal_sql(str_list, sql_file)

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('file_name', help='CSV File name')
    parser.add_argument('sql_file', help='SQL Text File name')

    args = parser.parse_args()

    main(args.file_name, args.sql_file)

# [END run]