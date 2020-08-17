#!/bin/bash
sudo pkill -9 iperf3
sleep 2
#dt=$(date '+%d%m%Y');
dt=$(date '+%Y%m%d');

#PARAMETERS

RUN_TIME=300
PING=1200
REPORT_INT=1
DEST_IP=172.16.100.1
BANDWIDTH=25000000
DEST_PORT=5011

#ICMP GERAL
#echo 'Teste de ping (ICMP) sendo executado em paralelo...'
ping -c $PING $DEST_IP > /testerede/data/baseline_icmp_$dt.txt &
#sleep 300
#UDP TESTE
clear
echo 'Testando Envio com UDP. Aguarde...'
iperf3 -c $DEST_IP -p $DEST_PORT -u -b $BANDWIDTH -t $RUN_TIME -i $REPORT_INT -V --get-server-output --logfile /testerede/data/baseline_send_udp_rede_ok_$dt.txt
clear
echo 'Testando Recebimento com UDP. Aguarde...'
iperf3 -c $DEST_IP -p $DEST_PORT -u -b $BANDWIDTH -t $RUN_TIME -i $REPORT_INT -V -R -l 210 --get-server-output --logfile /testerede/data/baseline_receive_udp_rede_ok_$dt.txt
echo "Observação Importante: O teste de recebimento UDP pode ter uma perda de até 40%, pois existe uma limitação de buffer UDP no iperf3 em modo reverso" >>/testerede/data/baseline_receive_udp_rede_ok_$dt.txt
clear
#TCP TESTE
echo 'Testando Recebimento com TCP. Aguarde...'
iperf3 -c $DEST_IP -p $DEST_PORT -b $BANDWIDTH -t $RUN_TIME -i $REPORT_INT -V -R --get-server-output --logfile /testerede/data/baseline_receive_tcp_rede_ok_$dt.txt
clear
echo 'Testando Envio com TCP. Aguarde...'
iperf3 -c $DEST_IP -p $DEST_PORT -b $BANDWIDTH -t $RUN_TIME -i $REPORT_INT -V --get-server-output --logfile /testerede/data/baseline_send_tcp_rede_ok_$dt.txt
clear
echo 'Teste de ping (ICMP) continuar a ser executado em paralelo...Aguarde...'
sleep 300
echo 'Teste finalizado com sucesso'


