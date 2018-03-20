% rebase('template/base_bootstrap.tpl', title='Edit')

    <div id="wrapper">

        <!-- Navigation -->
        % include('template/navigation.tpl')
        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">Отредактируйте нужный элемент</h3>

                </div>
                <form role="form" id="form" action="/edit/{{no}}"  method="get" accept-charset="utf-8">
                <div class="col-lg-6">
                  <h3>ПРИЕМ</h3>



                        <div class="form-group">
                            <label>Дата прихода</label>
                            <input class="form-control"   type="text" size="100" maxlength="100" name = "date_in" placeholder="17.03.2018"  value="{{old[0]}}">
                        </div>
                        <div class="form-group">
                            <label>Контрагент</label>
                            <input class="form-control"  type="text" size="100" maxlength="100" name = "name" placeholder="Вася Пупкмн" value="{{old[1]}}">
                        </div>
                        <div class="form-group">
                            <label>TTN</label>
                            <input class="form-control"  type="text" size="100" maxlength="100" name = "ttn_in" placeholder="59000034321">
                        </div>
                        <div class="form-group">
                            <label>Адресс отправителя</label>
                            <input class="form-control" type="text" size="100" maxlength="100" name = "sours_address" placeholder="Нихний мухосранск">
                        </div>
                        <div class="form-group">
                            <label>Оборудование</label>
                            <input class="form-control" name="equipment" placeholder="Один модуль, два патчкорда">
                        </div>
                        <div class="form-group">
                            <label>Серийный номер</label>
                            <input class="form-control" name="sn" placeholder="SN:34634634632">
                        </div>
                        <div class="form-group">
                            <label>MAC адресс</label>
                            <input class="form-control" name="mac" placeholder="AA:CC:BB:DD:EE:FF">
                        </div>
                        <div class="form-group">
                            <label>Причина возврата</label>
                            <input class="form-control"  name="reason" placeholder="Не подошло клиенту">
                        </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
                <div class="col-lg-6">
                    <h3>ОТПРАВКА</h3>

                      <div class="form-group">
                          <label>Принято?</label>
                          <div class="radio">
                              <label>
                                  <input type="radio" name="recd" id="optionsRadios1" value="Да"  checked>Да
                              </label>
                          </div>
                          <div class="radio">
                              <label>
                                  <input type="radio" name="recd" id="optionsRadios1" value="Нет" >Нет
                              </label>
                          </div>
                      </div>
                      <div class="form-group">
                          <label>Диагноз</label>
                          <input class="form-control" name="diagnosis" placeholder="Не исправно то-то... и то-то...">
                      </div>
                      <div class="form-group">
                          <label>Решение</label>
                          <input class="form-control" name="decision" placeholder="Заменено, вернули клиенту">
                      </div>
                      <div class="form-group">
                          <label>Контакт получателя</label>
                          <input class="form-control" name="date_out" placeholder="На фоисе забрал">
                      </div>
                      <div class="form-group">
                          <label>TTN</label>
                          <input class="form-control" name="ttn_out" placeholder="На офисе отгрузили!">
                      </div>
                      <div class="form-group">
                          <label>Адресс получателя</label>
                          <input class="form-control" name="dest_address" placeholder="Ну например:233">
                      </div>
                      <div class="form-group">
                          <label>Номер в 1С</label>
                          <input class="form-control" name="num_1c" placeholder="Ну например:233">
                      </div>
                      <div class="form-group">
                          <label>Обработано?</label>
                          <div class="radio">
                              <label>
                                  <input type="radio" name="state" id="optionsRadios1" value="Да" checked>Да
                              </label>
                          </div>
                          <div class="radio">
                              <label>
                                  <input type="radio" name="state" id="optionsRadios1" value="Нет">Пока нет
                              </label>
                          </div>
                          <button type="submit" class="btn btn-default" name="save" value="Сохранить"> Записать</button>
                          <button type="reset" class="btn btn-default">Отмена</button>

                      </div>


                </div>
                </form>
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
