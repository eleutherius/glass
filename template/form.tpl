% rebase('template/base_bootstrap.tpl', title='Form')

    <div id="wrapper">

        <!-- Navigation -->
        % include('template/navigation.tpl')

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Заполните форму</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Форма обработчик заявки на возврат
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                      <h3>ПРИЕМ</h3>

                                        <form role="form">

                                            <div class="form-group">
                                                <label>Дата прихода</label>
                                                <input class="form-control" placeholder="17.03.2018">
                                            </div>
                                            <div class="form-group">
                                                <label>Контрагент</label>
                                                <input class="form-control" placeholder="Вася Пупкмн">
                                            </div>
                                            <div class="form-group">
                                                <label>TTN</label>
                                                <input class="form-control" placeholder="59000034321">
                                            </div>
                                            <div class="form-group">
                                                <label>Адресс отправителя</label>
                                                <input class="form-control" placeholder="Нихний мухосранск">
                                            </div>
                                            <div class="form-group">
                                                <label>Оборудование</label>
                                                <input class="form-control" placeholder="Один модуль, два патчкорда">
                                            </div>
                                            <div class="form-group">
                                                <label>Серийный номер</label>
                                                <input class="form-control" placeholder="SN:34634634632">
                                            </div>
                                            <div class="form-group">
                                                <label>MAC адресс</label>
                                                <input class="form-control" placeholder="AA:CC:BB:DD:EE:FF">
                                            </div>
                                            <div class="form-group">
                                                <label>Причина возврата</label>
                                                <input class="form-control" placeholder="Не подошло клиенту">
                                            </div>



                                            <div class="form-group">
                                                <label>Static Control</label>
                                                <p class="form-control-static">email@example.com</p>
                                            </div>
                                            <div class="form-group">
                                                <label>File input</label>
                                                <input type="file">
                                            </div>
                                            <div class="form-group">
                                                <label>Text area</label>
                                                <textarea class="form-control" rows="3"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Checkboxes</label>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Checkbox 1
                                                    </label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Checkbox 2
                                                    </label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Checkbox 3
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Checkboxes</label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox">1
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox">2
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox">3
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label>Radio Buttons</label>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Radio 1
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio 2
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio 3
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Inline Radio Buttons</label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>1
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">2
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">3
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label>Selects</label>
                                                <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Multiple Selects</label>
                                                <select multiple class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-default">Submit Button</button>
                                            <button type="reset" class="btn btn-default">Reset Button</button>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                    <div class="col-lg-6">
                                        <h3>ОТПРАВКА</h3>
                                        <form role="form">
                                          <div class="form-group">
                                              <label>Принято?</label>
                                              <div class="radio">
                                                  <label>
                                                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Да
                                                  </label>
                                              </div>
                                              <div class="radio">
                                                  <label>
                                                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >Нет
                                                  </label>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <label>Диагноз</label>
                                              <input class="form-control" placeholder="Не исправно то-то... и то-то...">
                                          </div>
                                          <div class="form-group">
                                              <label>Решение</label>
                                              <input class="form-control" placeholder="Заменено, вернули клиенту">
                                          </div>
                                          <div class="form-group">
                                              <label>Контакт получателя</label>
                                              <input class="form-control" placeholder="На фоисе забрал">
                                          </div>
                                          <div class="form-group">
                                              <label>TTN</label>
                                              <input class="form-control" placeholder="На офисе отгрузили!">
                                          </div>
                                          <div class="form-group">
                                              <label>Номер в 1С</label>
                                              <input class="form-control" placeholder="Ну например:233">
                                          </div>
                                          <div class="form-group">
                                              <label>Обработано?</label>
                                              <div class="radio">
                                                  <label>
                                                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Да
                                                  </label>
                                              </div>
                                              <div class="radio">
                                                  <label>
                                                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">Нет
                                                  </label>
                                              </div>
                                          </div>

                                            <fieldset disabled>
                                                <div class="form-group">
                                                    <label for="disabledSelect">Disabled input</label>
                                                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label for="disabledSelect">Disabled select menu</label>
                                                    <select id="disabledSelect" class="form-control">
                                                        <option>Disabled select</option>
                                                    </select>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox">Disabled Checkbox
                                                    </label>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Disabled Button</button>
                                            </fieldset>
                                        </form>
                                        <h1>Form Validation States</h1>
                                        <form role="form">
                                            <div class="form-group has-success">
                                                <label class="control-label" for="inputSuccess">Input with success</label>
                                                <input type="text" class="form-control" id="inputSuccess">
                                            </div>
                                            <div class="form-group has-warning">
                                                <label class="control-label" for="inputWarning">Input with warning</label>
                                                <input type="text" class="form-control" id="inputWarning">
                                            </div>
                                            <div class="form-group has-error">
                                                <label class="control-label" for="inputError">Input with error</label>
                                                <input type="text" class="form-control" id="inputError">
                                            </div>
                                        </form>
                                        <h1>Input Groups</h1>
                                        <form role="form">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">@</span>
                                                <input type="text" class="form-control" placeholder="Username">
                                            </div>
                                            <div class="form-group input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-eur"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Font Awesome Icon">
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <div class="form-group input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

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
