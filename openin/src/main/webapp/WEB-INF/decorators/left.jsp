<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-store"></i>
          <span>HOME</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
<!--       <div class="sidebar-heading">
        Interface
      </div> -->

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#basicInfo" aria-expanded="true" aria-controls="basicInfo">
          <i class="fas fa-fw fa-folder"></i>
          <span>기초정보</span>
        </a>
        <div id="basicInfo" class="collapse" aria-labelledby="basicInfo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">기초정보 관리:</h6>
            <a class="collapse-item" href="basicInfo01.html">회사 정보</a>
            <a class="collapse-item" href="basicInfo02.html">사업장 정보</a>
            <a class="collapse-item" href="basicInfo03.html">부서 정보</a>
            <a class="collapse-item" href="basicInfo04.html">거래처 정보</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#logisticsInfo" aria-expanded="true" aria-controls="logisticsInfo">
          <i class="fas fa-fw fa-folder"></i>
          <span>물류정보</span>
        </a>
        <div id="logisticsInfo" class="collapse" aria-labelledby="logisticsInfo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">물류정보 관리:</h6>
            <a class="collapse-item" href="logisticsInfo1.html">코드 관리</a>
            <a class="collapse-item" href="logisticsInfo2.html">품목 관리</a>
            <a class="collapse-item" href="logisticsInfo3.html">창고 관리</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
<!--       <hr class="sidebar-divider"> -->

      <!-- Heading -->
<!--       <div class="sidebar-heading">
        Addons
      </div> -->

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#plan" aria-expanded="true" aria-controls="plan">
          <i class="fas fa-fw fa-folder"></i>
          <span>생산계획</span>
        </a>
        <div id="plan" class="collapse" aria-labelledby="plan" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">생산계획 관리:</h6>
            <a class="collapse-item" href="plan01.html">수주 등록</a>
            <a class="collapse-item" href="plan02.html">생산계획 등록</a>
            <a class="collapse-item" href="plan03.html">생산계획 배포</a>
            <a class="collapse-item" href="plan04.html">생산지시 등록</a>
            <a class="collapse-item" href="plan05.html">설비별 생산 현황</a>
            <a class="collapse-item" href="plan06.html">설비 이력 현황</a>
            <a class="collapse-item" href="plan07.html">설비 모니터링</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#work" aria-expanded="true" aria-controls="work">
          <i class="fas fa-fw fa-folder"></i>
          <span>작업지시</span>
        </a>
        <div id="work" class="collapse" aria-labelledby="work" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">작업지시 관리:</h6>
            <a class="collapse-item" href="work01.html">공정별 작업지시</a>
            <a class="collapse-item" href="work02.html">설비별 작업지시</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#perf" aria-expanded="true" aria-controls="perf">
          <i class="fas fa-fw fa-folder"></i>
          <span>생산실적</span>
        </a>
        <div id="perf" class="collapse" aria-labelledby="perf" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">생산실적 관리:</h6>
            <a class="collapse-item" href="perf01.html">생산실적</a>
            <a class="collapse-item" href="perf02.html">외주 수불관리</a>
            <a class="collapse-item" href="perf03.html">외주 실적관리</a>
          </div>
        </div>
      </li>
      
      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#facil" aria-expanded="true" aria-controls="facil">
          <i class="fas fa-fw fa-folder"></i>
          <span>설비현황</span>
        </a>
        <div id="facil" class="collapse" aria-labelledby="facil" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">설비현황 관리:</h6>
            <a class="collapse-item" href="facil01.html">가동/비가동 현황</a>
            <a class="collapse-item" href="facil02.html">가동율 현황</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#material" aria-expanded="true" aria-controls="material">
          <i class="fas fa-fw fa-folder"></i>
          <span>자재관리</span>
        </a>
        <div id="material" class="collapse" aria-labelledby="material" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">자재관리:</h6>
            <a class="collapse-item" href="material01.html">자재발주현황</a>
            <a class="collapse-item" href="material02.html">자재입고현황</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#warehouse" aria-expanded="true" aria-controls="warehouse">
          <i class="fas fa-fw fa-folder"></i>
          <span>창고관리</span>
        </a>
        <div id="warehouse" class="collapse" aria-labelledby="warehouse" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">창고관리:</h6>
            <a class="collapse-item" href="warehouse01.html">제품 입고관리</a>
            <a class="collapse-item" href="warehouse02.html">제품 출고관리</a>
            <a class="collapse-item" href="warehouse03.html">제품 입출고현황</a>
            <a class="collapse-item" href="warehouse04.html">제품 재고관리</a>
            <a class="collapse-item" href="warehouse05.html">제품 보관조회</a>
            <a class="collapse-item" href="warehouse06.html">제품단말정보조회</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quality" aria-expanded="true" aria-controls="quality">
          <i class="fas fa-fw fa-folder"></i>
          <span>품질관리</span>
        </a>
        <div id="quality" class="collapse" aria-labelledby="quality" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">품질관리:</h6>
            <a class="collapse-item" href="quality01.html">공정 물량 현황</a>
            <a class="collapse-item" href="quality02.html">불량 데이터 확인</a>
            <a class="collapse-item" href="quality03.html">기간별 품질현황</a>
            <a class="collapse-item" href="quality04.html">품목별 품질현황</a>
            <a class="collapse-item" href="quality05.html">불량실적관리</a>
            <a class="collapse-item" href="quality06.html">불량 Top5현황</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#standard" aria-expanded="true" aria-controls="standard">
          <i class="fas fa-fw fa-folder"></i>
          <span>기준정보관리</span>
        </a>
        <div id="standard" class="collapse" aria-labelledby="standard" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">기준정보관리:</h6>
            <a class="collapse-item" href="standard01.html">BOM 관리</a>
            <a class="collapse-item" href="standard02.html">자재 정보관리</a>
            <a class="collapse-item" href="standard03.html">제품 정보관리</a>
            <a class="collapse-item" href="standard04.html">품목 정보관리</a>
            <a class="collapse-item" href="standard05.html">설비 정보관리</a>
            <a class="collapse-item" href="standard06.html">품질 정보관리</a>
            <a class="collapse-item" href="standard07.html">거래처 정보관리</a>
            <a class="collapse-item" href="standard08.html">사용자 정보관리</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
<!--       <hr class="sidebar-divider d-none d-md-block"> -->

      <!-- Sidebar Toggler (Sidebar) -->
<!--       <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div> 
-->

    </ul>
