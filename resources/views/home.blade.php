@extends('layouts.admin')

@section('content-header', 'Dashboard')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <!-- Log on to marco farfan 3888-15568587 for Mas projects -->
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>{{ $ultimos_30_pedidos }}</h3>
                        <p>Pedidos ult. 30 dias </p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-dolly-flatbed"></i>
                    </div>
                    <a href="{{ route('orders.index') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3>{{ $profesionales }}</h3>
                        <p>Profesionales aprobados</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <a href="{{ route('usuarios.index') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>{{ config('settings.currency_symbol') }} {{ number_format($saldo, 2, ',', '.') }}</h3>
                        <p>Saldo a cobrar</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                    <a href="{{ route('exportCSV') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->


        </div>

        <div class="row"><!-- Log on to marco farfan 3888-15568587 for Mas projects -->
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-teal">
                    <div class="inner">
                        <h3>{{ config('settings.currency_symbol') }} {{ number_format($cobrado, 2, ',', '.') }}</h3>

                        <p>Ingresos ult. 30 dias</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-money-check-alt"></i>
                    </div>
                    <a href="{{ route('seguimiento') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-4 col-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                  <div class="inner">
                      <h3>{{ config('settings.currency_symbol') }} {{ number_format($cotizado, 2, ',', '.') }}</h3>

                      <p>Cotizado ult. 30 dias</p>
                  </div>
                  <div class="icon">
                      <i class="fas fa-money-check-alt"></i>
                  </div>
                  <a href="{{ route('seguimiento') }}" class="small-box-footer">Mas info <i
                          class="fas fa-arrow-circle-right"></i></a>
              </div>
          </div>

            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>{{ $customers_count }}</h3>

                        <p>Total Pacientes</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <a href="{{ route('customers.index') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
    </div><!-- Log on to marco farfan 3888-15568587 for Mas projects -->
@endsection
