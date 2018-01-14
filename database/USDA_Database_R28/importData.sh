#!/bin/bash

DB="fooddb"

psql -d ${DB} -f schema.sql


psql -d ${POSTGRES_DB} -c "COPY src_cd FROM 'SRC_CD.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY derive_code FROM 'DERIV_CD.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY data_src FROM 'DATA_SRC.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY footnote FROM 'FOOTNOTE.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY langdesc FROM 'LANGDESC.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY food_group FROM 'FD_GROUP.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY food FROM 'FOOD_DES.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY nutrient_def FROM 'NUTR_DEF.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY nutrient FROM 'NUT_DATA.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY weight FROM 'WEIGHT.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY langual FROM 'LANGUAL.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
psql -d ${POSTGRES_DB} -c "COPY datasrcln FROM 'DATSRCLN.txt' (FORMAT('csv'), DELIMITER('^'), QUOTE('~'))"
