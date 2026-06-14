<body>

<!-- TOPBAR -->
<div class="topbar">
  <span>🕐 अंतिम अपडेट: 13 जून 2025 | Helpline: <strong style="color:var(--gold)">1800-111-999</strong></span>
  <div><a href="#">हिंदी</a><a href="#">English</a></div>
</div>

<!-- HEADER -->
<div class="header">
  <div class="logo">
    <div class="logo-emblem">🇮🇳</div>
    <div class="logo-text">
      <h1>भारत सरकारी पोर्टल</h1>
      <p>India No.1 Government Jobs &amp; Exam Portal</p>
    </div>
  </div>
  <div class="header-search">
    <input type="text" id="srchIn" placeholder="परीक्षा, रिजल्ट, योजना खोजें..." onkeydown="if(event.key==='Enter')srch()"/>
    <button class="search-btn" onclick="srch()">🔍 खोजें</button>
  </div>
</div>

<!-- NAV -->
<div class="nav">
  <button class="nav-btn active" onclick="goPage('home',this)">🏠 होम</button>
  <button class="nav-btn" onclick="goPage('news',this)">📰 ताजा खबर</button>
  <button class="nav-btn" onclick="goPage('exam',this)">📝 Exam Form</button>
  <button class="nav-btn" onclick="goPage('result',this)">🏆 Result</button>
  <button class="nav-btn" onclick="goPage('admit',this)">🎫 Admit Card</button>
  <button class="nav-btn" onclick="goPage('scheme',this)">🤝 योजनाएं</button>
  <button class="nav-btn" onclick="goPage('job',this)">💼 सरकारी नौकरी</button>
</div>

<!-- TICKER -->
<div class="ticker">
  <div class="ticker-label">🔴 LIVE</div>
  <div class="ticker-wrap">
    <div class="ticker-inner">
      <span>🔥 SSC CGL 2025 – 17,726 पद | आवेदन शुरू</span>
      <span>🏆 UPSC CSE 2025 Final Result जारी – देखें</span>
      <span>🚂 Railway NTPC 2025 – 11,558 पद | Form भरें</span>
      <span>🎓 CBSE 12th Result 2025 – अभी चेक करें</span>
      <span>💊 PM Ayushman Bharat – नया कार्ड बनाएं</span>
      <span>🏦 SBI PO 2025 Notification जारी</span>
      <span>🔥 SSC CGL 2025 – 17,726 पद | आवेदन शुरू</span>
      <span>🏆 UPSC CSE 2025 Final Result जारी – देखें</span>
      <span>🚂 Railway NTPC 2025 – 11,558 पद | Form भरें</span>
      <span>🎓 CBSE 12th Result 2025 – अभी चेक करें</span>
    </div>
  </div>
</div>

<!-- STATE BAR -->
<div class="state-bar">
  <label>🗺️ राज्य चुनें:</label>
  <select class="state-select" id="stateSel" onchange="changeState(this.value)">
    <option value="all">-- सभी राज्य (All India) --</option>
    <option value="UP">उत्तर प्रदेश</option>
    <option value="Bihar">बिहार</option>
    <option value="Rajasthan">राजस्थान</option>
    <option value="MP">मध्य प्रदेश</option>
    <option value="Maharashtra">महाराष्ट्र</option>
    <option value="Delhi">दिल्ली</option>
    <option value="Gujarat">गुजरात</option>
    <option value="Haryana">हरियाणा</option>
    <option value="Punjab">पंजाब</option>
    <option value="Karnataka">कर्नाटक</option>
    <option value="Tamil Nadu">तमिलनाडु</option>
    <option value="West Bengal">पश्चिम बंगाल</option>
    <option value="Jharkhand">झारखंड</option>
    <option value="Uttarakhand">उत्तराखंड</option>
    <option value="Chhattisgarh">छत्तीसगढ़</option>
    <option value="Odisha">ओडिशा</option>
    <option value="Assam">असम</option>
    <option value="HP">हिमाचल प्रदेश</option>
    <option value="Kerala">केरल</option>
    <option value="Goa">गोवा</option>
    <option value="J&K">जम्मू-कश्मीर</option>
  </select>
  <span class="state-pill" id="statePill">All India 🇮🇳</span>
</div>

<!-- PAGES -->
<div class="wrap">

<!-- HOME PAGE -->
<div class="page active" id="page-home">
  <div class="layout">
    <div>
      <div class="stats-row" style="margin-top:20px">
        <div class="stat"><div class="n">2.4 करोड़</div><div class="l">रजिस्टर्ड यूजर</div></div>
        <div class="stat"><div class="n" style="color:var(--green)">50,000+</div><div class="l">Active नौकरियां</div></div>
        <div class="stat"><div class="n" style="color:var(--navy2)">1,200+</div><div class="l">Exam Notifications</div></div>
        <div class="stat"><div class="n" style="color:var(--gold)">500+</div><div class="l">सरकारी योजनाएं</div></div>
      </div>

      <div class="cat-row">
        <button class="cat-pill on" onclick="filterHome('all',this)">📋 सभी <span class="badge">Latest</span></button>
        <button class="cat-pill" onclick="filterHome('exam',this)">📝 Exam Form <span class="badge">48</span></button>
        <button class="cat-pill" onclick="filterHome('result',this)">🏆 Result <span class="badge">32</span></button>
        <button class="cat-pill" onclick="filterHome('admit',this)">🎫 Admit Card <span class="badge">18</span></button>
        <button class="cat-pill" onclick="filterHome('job',this)">💼 Naukri <span class="badge">76</span></button>
        <button class="cat-pill" onclick="filterHome('scheme',this)">🤝 Yojana <span class="badge">120</span></button>
      </div>

      <div class="sec-head">
        <div class="sec-title">📝 परीक्षा फॉर्म – आज ही भरें</div>
        <button class="see-all" onclick="goPage('exam',null)">सभी देखें →</button>
      </div>

      <div class="exam-grid" id="homeExams">

        <div class="exam-card" data-cat="exam">
          <div class="exam-card-head">
            <div class="ec-icon saffron">📝</div>
            <div class="ec-info">
              <h3>SSC CGL 2025 <span class="badge-new">NEW</span></h3>
              <div class="ec-meta">
                <span>📋 17,726 पद</span>
                <span>🎓 Graduation</span>
                <span>📅 18-32 वर्ष</span>
              </div>
            </div>
            <div class="ec-right">
              <div class="ec-date"><strong>31 Aug</strong>Last Date</div>
            </div>
          </div>
          <div class="exam-card-foot">
            <button class="btn btn-primary btn-sm" onclick="openForm('SSC CGL 2025','Staff Selection Commission','17,726','Graduation','18-32 वर्ष','₹100 (Gen) / Free (SC/ST/Female)','01 Aug – 31 Aug 2025','Central Govt')">📝 Form भरें</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📄 Notification PDF खुल रहा है...')">Notification</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📚 Syllabus PDF Download हो रहा है...')">Syllabus</button>
          </div>
        </div>

        <div class="exam-card" data-cat="exam">
          <div class="exam-card-head">
            <div class="ec-icon blue">🚂</div>
            <div class="ec-info">
              <h3>Railway NTPC 2025 <span class="badge-new">NEW</span></h3>
              <div class="ec-meta">
                <span>📋 11,558 पद</span>
                <span>🎓 12वीं / Graduation</span>
                <span>📅 18-33 वर्ष</span>
              </div>
            </div>
            <div class="ec-right">
              <div class="ec-date"><strong>15 Aug</strong>Last Date</div>
            </div>
          </div>
          <div class="exam-card-foot">
            <button class="btn btn-primary btn-sm" onclick="openForm('Railway NTPC 2025','RRB (Railway Recruitment Board)','11,558','12वीं पास / Graduation','18-33 वर्ष','₹500 (Gen) / ₹250 (SC/ST)','15 July – 15 Aug 2025','Central Govt')">📝 Form भरें</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📄 Notification PDF खुल रहा है...')">Notification</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📚 Syllabus Download...')">Syllabus</button>
          </div>
        </div>

        <div class="exam-card" data-cat="result">
          <div class="exam-card-head">
            <div class="ec-icon green">🏆</div>
            <div class="ec-info">
              <h3>UPSC CSE Final Result 2025</h3>
              <div class="ec-meta">
                <span>🏛️ UPSC</span>
                <span>📅 13 June 2025</span>
              </div>
            </div>
            <div class="ec-right">
              <div class="ec-date"><strong>Declared</strong>Today</div>
            </div>
          </div>
          <div class="exam-card-foot">
            <button class="btn btn-green btn-sm" onclick="goPage('result',null);setupResult('UPSC CSE 2025')">🏆 Result देखें</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📄 Merit List PDF खुल रही है...')">Merit List PDF</button>
          </div>
        </div>

        <div class="exam-card" data-cat="admit">
          <div class="exam-card-head">
            <div class="ec-icon purple">🎫</div>
            <div class="ec-info">
              <h3>NDA II 2025 Admit Card <span class="badge-new">NEW</span></h3>
              <div class="ec-meta">
                <span>🏛️ UPSC</span>
                <span>📅 Exam: 14 Sep 2025</span>
              </div>
            </div>
            <div class="ec-right">
              <div class="ec-date"><strong>Active</strong>Download</div>
            </div>
          </div>
          <div class="exam-card-foot">
            <button class="btn btn-blue btn-sm" onclick="goPage('admit',null);setupAdmit('NDA II 2025')">🎫 Admit Card</button>
            <button class="btn btn-outline btn-sm" onclick="showToast('📋 Exam Instructions खुल रहे हैं...')">Instructions</button>
          </div>
        </div>