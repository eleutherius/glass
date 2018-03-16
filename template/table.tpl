% rebase('template/base_bootstrap.tpl', title='Table')

    <div id="wrapper">

        <!-- Navigation -->
        % include('template/navigation.tpl')

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Журнал возврата оборудования </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Таблица
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover " id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Дата прихода</th>
                                        <th>Контрагент</th>
                                        <th>TTN</th>
                                        <th>Контакт отправителя </th>
                                        <th>Оборудование</th>
                                        <th>Серийник</th>
                                        <th>МАК</th>
                                        <th>Причина возврата</th>
                                        <th>Принято</th>
                                        <th>Диагноз</th>
                                        <th>Решение</th>
                                        <th>Дата отгрузки</th>
                                        <th>TTN</th>
                                        <th>Контакты получателя</th>
                                        <th>Номер в 1С</th>
                                        <th>Обработано</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  %for row4 in rows4:
                                    <tr>
                                    %for a in row4:
                                      <td><p>{{a}}</p></td>
                                    %end
                                    </tr>
                                  %end

                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>


        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
