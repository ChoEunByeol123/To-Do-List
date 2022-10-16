<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily-To-Do List</title>
    <link rel="stylesheet" href="daily-to-do-list.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
        <!-- 폰트 어썸 내 CDN -->
    <script src="https://kit.fontawesome.com/63ff410302.js" crossorigin="anonymous"></script> 


</head>


<body>

    <div class="wrap">
        <header>
            <div class="header-wrap">
                <h1 class="h-content-name" >To-Do-List</h1>
                <h2 class="h-create-name">Create doiting</h2>
            </div>
        </header>
    
        <div> test commit </div>

        <section>
            <div class="section-wrap">
                <div class="import-alert">
                    <div class="alert-box box-active">
                        <div class="alert-box-content box-content-active">
                            <ul>
                                <li> 국제법무론 시험&nbsp;&nbsp;<span>D-Day</span>
                                </li>
                                <li> 조직행동론 과제&nbsp;&nbsp;<span>D-2</span></li>
                                <li> 조직행동론 시험&nbsp;&nbsp;<span>D-5</span>
                                </li>
                                <li> 비즈니스론 팀플&nbsp;&nbsp;<span>D-10</span>
                                </li>
                                <li> 조직행동론 과제&nbsp;&nbsp;<span>D-14</span>
                                </li>
                                <li> 조직행동론 과제&nbsp;&nbsp;<span>D-15</span></li>
                            </ul>
                        </div>
                        <div class="alert-box-btn border-active">
                            <i class="alert-box-btn-icon fa fa-exclamation"></i>
                            <i class="alert-box-btn-icon fa fa-times active"></i>
                        </div>
                    </div>
                </div>


                <ul class="section-navi">
                    <li><a href="#none1">Daily-To-Do List</a>
                    </li>
                    <li><a href="#none2">Weekly-To-Do List</a>
                    </li>
                    <li><a href="#none3">aa</a>
                    </li>
                    <li><a href="#none4">bb</a>
                    </li>
                </ul>



                <div class="section-body">
                    <div class="sb-head">
                        <h2 class="sb-title">Daily-To-Do-List</h2>
                        <div class="sb-calender" id="sb-calender"><i class="fa-solid fa-calendar-days"></i></div>
                    </div>
                    <div class="sb-section"  >
                        <div class="sb-top">
                            <h3><i class="fa fa-chevron-left day-go"></i>&nbsp;<% Response.Write Month(now()) %>월&nbsp;<% Response.Write Day(now()) %>일                     <span>Today</span>&nbsp;<i class="fa fa-chevron-right day-go"></i></h3>
                            <div class="sb-filter">필터</div>
                        </div>
                        <div class="sb-middle" >
                            <div class="sb-content" id="sb-content">
                                <ul>
                                    <li>Category</li>
                                    <li>Icon</li>
                                    <li>Chk</li>
                                    <li>To-Do</li>
                                    <li>Import</li>
                                </ul>

                            <form class="sbc-ul-content" id="h"></form>
                            
                            <template id = "a-template">                     
                                <ul id="sbc-ul" class="sbc-ul">
                                    <li class="sbc-category" ><span class="sbc-category-name" id="sbc-category-name">학교
                                    </span>
                                    <div class="Category-pick" id="Category-pick">
                                        <h2>카테고리 추가</h2>
                                        <input type="text" placeholder="카테고리명">
                                        <div class="category-Cpick" id="category-Cpick">
                                            <div>
                                                <span id="Cpick-1" class="Cpick"></span>
                                                <span id="Cpick-2" class="Cpick" ></span>
                                                <span id="Cpick-3" class="Cpick"></span>
                                                <span id="Cpick-4" class="Cpick"></span>
                                                <span id="Cpick-5" class="Cpick"></span>
                                            </div>
                                            <div>
                                                <span id="Cpick-6" class="Cpick" ></span>
                                                <span id="Cpick-7" class="Cpick" ></span>
                                                <span id="Cpick-8" class="Cpick" ></span>
                                                <span id="Cpick-9" class="Cpick" ></span>
                                                <span id="Cpick-10" class="Cpick" ></span>
                                                
                                            </div>
                                            <div>
                                                <span id="Cpick-11" class="Cpick"></span>
                                                <span id="Cpick-12" class="Cpick" ></span>
                                                <span id="Cpick-13" class="Cpick" ></span>
                                                <span id="Cpick-14" class="Cpick cpick-active"></span>
                                                <span id="Cpick-15" class="Cpick" ></span>
                                            </div>
                                        </div>
                                        <div class="category-top-pick">
                                            <input type="checkbox" id="category-top-pick">
                                            <label for="category-top-pick">해당 카테고리를 상단에 고정</label>
                                        </div>
                                        <div class="category-pick-btn">
                                            <!-- button에 type을 지정해주지 않으면, 기본 값은 submit이다. -->
                                            <button class="clear-btn" type=button onclick="CategoryClear()">취소</button>
                                            <button class="add-btn">추가</button>
                                        </div>
                                    </div>
                                    </li>
                                    <li class="sbc-icon"><i class="fa-solid fa-school"></i></li>
                                    <li class="sbc-chk" ><input type="checkbox" id="chk1" class="sbc-chk-input"><label for="chk1"></label>
                                    </li>
                                    <li class="sbc-todo"><input type="text"></li>
                                    <li class="sbc-import"></li>
                                </ul>
                            </template>
                         
                                <ul>
                                  <li><i class="xi-plus-circle sbc-plus" id=sbc-plus></i></li>
                                  <li></li>
                                  <li></li>
                                  <li></li>
                                  <li></li>
                                </ul>   
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        
        
        <div class="dark-light-tog">
            <div class="dark-light-btn">
                <i class="dark-light-btn-icon xi-sun "></i>
                <i class="dark-light-btn-icon fa-solid fa-moon active" ></i>
            </div>
        </div>



        
    


    <table>
        <tr style="width: 100%; height:30px"></tr>
    </table>


    </div>































    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="daily-to-do-list.js"></script>


</body>
</html>