FROM cnfldemos/cp-server-connect-datagen:0.6.2-7.5.0

RUN confluent-hub install --no-prompt  jcustenborder/kafka-connect-spooldir:2.0.65 \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.6.3 \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest