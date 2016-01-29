*** Settings ***
Library           Selenium2Library

*** Variables ***
${browser}        	    chrome
${selenium_speed}       0.25
${url_wd}   			http://finndeco.codemen.fi/build/?api=K3JK2FCG
${url_sms}   			http://finndeco.codemen.fi/manage/

*** Keywords ***
Avaa Wardrobe Builder
    Open Browser                		${url_wd}    ${browser}
    Maximize Browser Window
    Set Selenium Speed          		${selenium_speed}
    Wait Until Element Is Visible  		//section[@id='section-welcome_message']/div[2]/button

Klikkaa Aloita Suunnittelu Painiketta
	Click Element    					//section[@id='section-welcome_message']/div[2]/button
	Wait Until Element Is Visible   	//section[@id='section-place_aperture']/div[5]/div[3]/div    timeout=30s

Valitse Korkeus
	Click Element    					//section[@id='section-place_aperture']/div[5]/div[3]/div    	# 2
	Wait Until Element Is Visible    	//section[@id='section-place_aperture']/div[5]/div[6]    timeout=30s
	Click Element    					//section[@id='section-place_aperture']/div[5]/div[6]    		# 5
	Wait Until Element Is Visible    	//section[@id='section-place_aperture']/div[2]/div/div

Valitse Leveys Ja Klikkaa Seuraava Vaihe
	Click Element    					//section[@id='section-place_aperture']/div[2]/div/div
	Wait Until Element Is Visible    	//section[@id='section-place_aperture']/div[5]/div[3]/div    timeout=30s
	Click Element    					//section[@id='section-place_aperture']/div[5]/div[3]/div
	Wait Until Element Is Visible    	//section[@id='section-progress_navigation']/div[5]    timeout=30s
	# Seuraaava vaihe
	Click Element    					//section[@id='section-progress_navigation']/div[5]
	Wait Until Element Is Visible    	//section[@id='section-sidebar_doors']/div[2]/div/div[2]/div[4]/div    timeout=30s

Valitse Liukuovien Määrä Ja Klikkaa Seuraava Vaihe
	# 2 kappeletta
	Click Element    					//section[@id='section-sidebar_doors']/div[2]/div/div[2]/div[4]/div
	Wait Until Element Is Visible    	//section[@id='section-progress_navigation']/div[5]/span    timeout=30
	Click Element    					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible 		//section[@id='section-sidebar_profiles']/div[2]/div/div[2]/div[2]/div[2]    timeout=30s

Valitse Mieleisesi Liukuoviprofiili
	# s100
	Click Element    					//section[@id='section-sidebar_profiles']/div[2]/div/div[2]/div[2]/div[2]
	Wait Until Element Is Visible   	//section[@id='section-sidebar_profiles']/div[2]/div[2]/div[2]/div[2]/div[2]    timeout=30s

Valitse Mieleisesi Profiilisävy Ja Klikkaa Seuraava Vaihe
	# Tammi
	Click Element    					//section[@id='section-sidebar_profiles']/div[2]/div[2]/div[2]/div[2]/div[2]
	Wait Until Element Is Visible   	//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	# Seuraava vaihe
	Click Element     					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible   	//section[@id='section-progress_navigation']/div[5]/span    timeout=30s

Valitse Liukuoven Hidastimet Ja Klikkaa Seuraava Vaihe
	Wait Until Page Contains 			Tähän profiiliin ei saa hidastinta    timeout=30s
	Wait Until Element Is Visible   	//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	# Seuraava vaihe
	Click Element    					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible   	//*[@id='section-sidebar_frame']/div[2]/div[1]/div[2]/div/div[1]/label/label    timeout=30s

Valitse Runko-osat Ja Klikkaa Seuraava Vaihe
	# Kattolevy
	Click Element    					//*[@id='section-sidebar_frame']/div[2]/div[1]/div[2]/div/div[1]/label/label
	Wait Until Element Is Visible   	//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	Click Element 						//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible       //section[@id='section-sidebar_frame']/div[2]/div[3]/div[2]/div[2]/div[2]    timeout=30s

Valitse Kehäsävy Ja Klikkaa Seuraava Vaihe
	# Pähkinä
	Click Element    					//section[@id='section-sidebar_frame']/div[2]/div[3]/div[2]/div[2]/div[2]
	Wait Until Element Is Visible   	//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	# Seuraava vaihe
	Click Element  						//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible  		//section[@id='section-sidebar_separators']/div[2]/div/div[2]/div/div/div

Valitse Mieleisesi Ovimalli Tästä Ja Klikkaa Seuraava Vaihe
	# Ylin, yksi
	Click Element   					//section[@id='section-sidebar_separators']/div[2]/div/div[2]/div/div/div
	Wait Until Element Is Visible  		//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	# Seuraava vaihe
	Click Element    					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible  		//section[@id='section-progress_navigation']/div[5]/span    timeout=30s

Lisää, Poista Tai Säädä Jakolistoja Mielesi Mukaan Ja Klikkaa Seuraava Vaihe
	# Seuraava vaihe
	Click Element    					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible     	//section[@id='section-sidebar_materials']/div[2]/div/div[2]/div[2]/div[3]    timeout=30s

Valitse Materiaalit Ja Klikkaa Seuraava Vaihe
	Click Element    //section[@id='section-sidebar_materials']/div[2]/div/div[2]/div[2]/div[3]
	Wait Until Element Is Visible    	css=img[alt="panelmaterial_finland_kirkas_peili"]    timeout=30s
	Click Element     					css=img[alt="panelmaterial_finland_kirkas_peili"]
	Wait Until Element Is Visible  		//section[@id='section-progress_navigation']/div[5]/span    timeout=30s
	Click Element    					//section[@id='section-progress_navigation']/div[5]/span
	Wait Until Element Is Visible    	css=button[type="submit"]    timeout=30s

Tallenna Suunnitelma Ja Lähetä
	Click Element    					css=button[type="submit"]
	Wait Until Element Is Visible   	name=full_name    				timeout=30s
	Input Text  						name=full_name    				Testiautomaatio
	Wait Until Element Is Visible   	name=email    					timeout=30s
	Input Text  						name=email    					sami.stedt@q-factory.fi
	Wait Until Element Is Visible   	css=button[type="submit"]    	timeout=30s
	Click Element   					css=button[type="submit"]
	Wait Until Element Is Visible   	css=button[type="submit"]    	timeout=30s
	Click Element   					css=button[type="submit"]
	# Jaa tämä sivu, email
	Wait Until Element Is Visible  		//*[@id='section-sidebar_storage']/div/div[7]/div/div[2]/button[1]    timeout=30s






# Tästä alkaa Slideco Management System keywordit

Sisäänkirjaudu Slideco Management System
    [Arguments]     					${user}    ${pwd}
    Open Browser                        ${url_sms}    ${browser}
    Maximize Browser Window
    Set Selenium Speed                  ${selenium_speed}
    Input Text      name=login          ${user}
    Input Text      name=password       ${pwd}
    Click Element                       css=button.btn.btn-default
    Wait Until Element Is Visible       link=Finland Division Dashboard    timeout=30s

Mene Finland Division Dashboardiin
	Click Element    					link=Finland Division Dashboard
	Wait Until Element Is Visible   	link=List Orders »

Klikkaa List Orders, Syötä Reference/Customer name ja Tarkista Tiedot
	Click Element    	   				link=List Orders »
	Wait Until Element Is Visible       //div[@id='retailer-content-floated']/div/div/div/div[3]/div/div[3]/div/input    timeout=30s
	Input Text   						//div[@id='retailer-content-floated']/div/div/div/div[3]/div/div[3]/div/input   Testiryhmä2
	Wait Until Page Contains   			€1621.66    timeout=30s
	Wait Until Page Contains   			Unconfirmed     timeout=30s
	Wait Until Page Contains   			Draft      timeout=30s

Uloskirjaudu
	Click Element                       css=span.glyphicon.glyphicon-log-out
	Wait Until Page Contains    		You have just been logged out    timeout=10s



