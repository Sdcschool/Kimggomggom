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
            <a class="collapse-item" href="basicInfo01.html">사업장 정보</a>
            <a class="collapse-item" href="basicInfo02.html">거래처 정보</a>
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
            <a class="collapse-item" href="plan01.html">생산계획 등록</a>
            <a class="collapse-item" href="plan02.html">생산지시 등록</a>
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
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#material" aria-expanded="true" aria-controls="material">
          <i class="fas fa-fw fa-folder"></i>
          <span>자재</span>
        </a>
        <div id="material" class="collapse" aria-labelledby="material" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">자재 관리:</h6>
            <a class="collapse-item" href="material01.html">자재발주 현황</a>
            <a class="collapse-item" href="material02.html">자재입고 현황</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
