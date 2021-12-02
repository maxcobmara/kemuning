Task.create!([
  {id: 1, code: "17000.001", title: "Process Memorandum of Request", security: nil, position_id: 9, owner: "1.X", description: "Initiate memorandum of request for in house legal review"},
  {id: 3, code: "10300.002", title: "Update & Publish Pricing", security: nil, position_id: 19, owner: "", description: "Every cycle or when a resource input exceeds a threshold, to gather updated information from predetermined inputs and update the pricing using the approved pricing mechanism and communicate the changes to business development & billing. "},
  {id: 4, code: "10300.003", title: "Develop Quotation", security: nil, position_id: 19, owner: "", description: "Using latest pricing rules develop quotation for sales"},
  {id: 5, code: "10300.004", title: "Maintain ACA Master List ", security: nil, position_id: 19, owner: "", description: "Maintain Master List of Aircraft Charter Agreements"},
  {id: 6, code: "12101.001", title: "Prepare Weekly Forecast", security: nil, position_id: 20, owner: "", description: "Based on inputs from planning, and financial information from CAMO Head, prepare a weekly financial requirement report and submit to the Finance Dept."},
  {id: 7, code: "12101.002", title: "Monthly Expense Report", security: nil, position_id: 20, owner: "", description: "Based on Service Item Notes from AMO (SIN) prepare a monthly per plane expense report. \r\n"},
  {id: 8, code: "12102.003", title: "AMO Productivity Report ", security: nil, position_id: 20, owner: "", description: "Using billable hours used from AMO vs the known available hours derive a monthly AMO productivity report. \r\n"},
  {id: 9, code: "12102.004", title: "Prepare & Maintain Project Budget ", security: nil, position_id: 20, owner: "", description: "For any major maintenance effort such as a ‘C’ Check, based on inputs from the CAMO head, prepare a cost effectiveness measurement report. "},
  {id: 10, code: "19120.001", title: "Training Bond Process", security: nil, position_id: 28, owner: "", description: "Prepare Training Bond and close and file Training Bond Agreement \r\n"},
  {id: 11, code: "19122.001", title: "Training Requisition", security: nil, position_id: 28, owner: "", description: "HOD’s nominate staff for training and submit the training to PM-Training Based on submissions by HOD’s, staff is nominated training is \r\nrequisitioned for staff. Training may be mandatory or regulatory. "},
  {id: 12, code: "19122.003", title: "Claim HRDF", security: nil, position_id: 28, owner: "", description: "Prepare and submit claims to HRDF for training grants. \r\n"},
  {id: 14, code: "19110.001", title: "Activate Allowance", security: nil, position_id: 25, owner: "", description: "Start Allowance for Staff"},
  {id: 13, code: "19200.001", title: "Service Request", security: nil, position_id: 29, owner: "HOD", description: "Request IT Services from IT"},
  {id: 15, code: "19110.002", title: "Deactivate Allowance", security: nil, position_id: 25, owner: "", description: "Process to deactivate or suspend allowance for staff as recommended by their respective HOD"},
  {id: 16, code: "12400.001", title: "Flight Operation Notice Distribution", security: nil, position_id: 16, owner: "", description: "Distribution of Flight Notices in accordance with documents"},
  {id: 2, code: "10210.001", title: "Develop Pricing Template ", security: nil, position_id: 19, owner: "1.0.3", description: "Understand resource requirements for each BU. Receive the resource pricing inputs from various departments and develop a profitable \r\npricing mechanism with thresholds and buffers for use by the Business Development Unit. \r\n"}
])
Event.create!([
  {id: 1, task_id: 1, code: "17000.001.01", sequence: 1, position_id: nil, owner: "Counter Party", title: "Counter Party Initiates", description: "The counter party contacts the associated HOD regarding contract expiry.", url: nil, file_url: nil},
  {id: 2, task_id: 1, code: "17000.001.01", sequence: 1, position_id: nil, owner: "Timer", title: "Contract Expiry", description: "Contract expiry is noted by the relevant HOD, and self initiated", url: nil, file_url: nil},
  {id: 3, task_id: 1, code: "17000.001.02", sequence: 2, position_id: nil, owner: "HOD", title: "HOD to fill MOR", description: "HOD to fill Memorandum of Request and submit to Legal", url: nil, file_url: nil},
  {id: 4, task_id: 1, code: "17000.001.03", sequence: 3, position_id: 9, owner: "", title: "Vet & Discuss", description: "Legal to vet and call for discussion", url: nil, file_url: nil},
  {id: 5, task_id: 1, code: "17000.001.04", sequence: 4, position_id: 9, owner: "", title: "Approval", description: "Vetting complete and new agreement approved", url: nil, file_url: nil},
  {id: 6, task_id: 1, code: "17000.001.05", sequence: 5, position_id: 9, owner: "", title: "Issue Clearance Note", description: "Legal will fill and complete the Clearance Note and forward with original contract and MOR set to GMD for execution", url: nil, file_url: nil},
  {id: 7, task_id: 1, code: "17000.001.06", sequence: 6, position_id: 1, owner: "", title: "Contract Execution", description: "GMD receives and executes contact execution as per legal advise, and returns to contract owner for stamping arrangements", url: nil, file_url: nil},
  {id: 8, task_id: 1, code: "17000.001.07", sequence: 7, position_id: nil, owner: "HOD", title: "Arrange Stamping", description: "Relevant HOD receives executed contract from GMD, and makes arrangements for stamping with counter party.\r\nOn completion, HOD returns the stamped contract to legal for filing.", url: nil, file_url: nil},
  {id: 9, task_id: 1, code: "17000.001.08", sequence: 8, position_id: 9, owner: "", title: "Filing", description: "Legal receives stamped contract and files appropriately in contract file.", url: nil, file_url: nil},
  {id: 10, task_id: 2, code: "10300.001.01", sequence: 1, position_id: 19, owner: "", title: "Gather Inputs ", description: "Pricing gathers fuel price (finance) and fuel burn rates (operations) ", url: nil, file_url: nil},
  {id: 11, task_id: 2, code: "10300.001.02", sequence: 2, position_id: 19, owner: "", title: "Develop Pricing Table ", description: "Based on experience develop a pricing template that is suitable for use ", url: nil, file_url: nil},
  {id: 12, task_id: 2, code: "10300.001.03", sequence: 3, position_id: 19, owner: "", title: "Publish for use", description: "Pricing publishes the pricing template for use.", url: nil, file_url: nil},
  {id: 13, task_id: 3, code: "10300.002.01", sequence: 1, position_id: nil, owner: "Trigger", title: "Every Three Months", description: "", url: nil, file_url: nil},
  {id: 14, task_id: 3, code: "10300.002.01", sequence: 1, position_id: nil, owner: "Trigger", title: "Fuel Price exceeds Threshold", description: "", url: nil, file_url: nil},
  {id: 15, task_id: 3, code: "10300.002.02", sequence: 2, position_id: 19, owner: "", title: "Request Updated Fuel Price ", description: "Pricing to request updated fuel pricing from finance. \r\n", url: nil, file_url: nil},
  {id: 16, task_id: 3, code: "10300.002.03", sequence: 3, position_id: 10, owner: "", title: "Deliver Updated Fuel Price", description: "Finance sends updated pricing \r\n", url: nil, file_url: nil},
  {id: 17, task_id: 3, code: "10300.002.04", sequence: 4, position_id: 19, owner: "", title: "Update Pricing ", description: "Pricing updates pricing using template. ", url: nil, file_url: nil},
  {id: 18, task_id: 3, code: "10300.002.05", sequence: 5, position_id: 19, owner: "", title: "Publish Pricing ", description: "Publish Pricing to Business Development and Finance for quotation & Billing", url: nil, file_url: nil},
  {id: 19, task_id: 4, code: "10300.003.01", sequence: 1, position_id: 3, owner: "", title: "Pricing Requests Quotation", description: "", url: nil, file_url: nil},
  {id: 20, task_id: 4, code: "10300.003.02", sequence: 2, position_id: 19, owner: "", title: "Check availability", description: "Check availability, rate against business rules ", url: nil, file_url: nil},
  {id: 21, task_id: 4, code: "10300.003.03", sequence: 3, position_id: 19, owner: "", title: "Prepare Quotation ", description: "Prepare quotation using template and send to 1.1 Business Development", url: nil, file_url: nil},
  {id: 22, task_id: 5, code: "10300.004.01", sequence: 1, position_id: 9, owner: "", title: "Send ACA", description: "Legal sends copy of Aircraft Charter Agreement for reference", url: nil, file_url: nil},
  {id: 23, task_id: 5, code: "10300.004.02", sequence: 2, position_id: 19, owner: "", title: "Receive ACA", description: "Pricing receives Aircraft Charter Agreement (ACA) from legal. ", url: nil, file_url: nil},
  {id: 24, task_id: 5, code: "10300.004.03", sequence: 3, position_id: 19, owner: "", title: "Log Rates and End Date", description: "Pricing logs pricing and end date of ACA in ACA Master List \r\n", url: nil, file_url: nil},
  {id: 25, task_id: 5, code: "10300.004.04", sequence: 4, position_id: 19, owner: "", title: "File ACA", description: "Pricing files ACA for future reference ", url: nil, file_url: nil},
  {id: 26, task_id: 6, code: "12110.001.01", sequence: 1, position_id: 23, owner: "", title: "Weekly Maint Plan ", description: "Receive Weekly Maintenance Plan from Planning. \r\n", url: nil, file_url: nil},
  {id: 27, task_id: 6, code: "12110.001.02", sequence: 2, position_id: 20, owner: "", title: "Prepare Template for input ", description: "Prepare maintenance data from 1212 Planning into the template. ", url: nil, file_url: nil},
  {id: 28, task_id: 6, code: "12110.001.03", sequence: 3, position_id: 13, owner: "", title: "HOD Input ", description: "HOD studies plan and provides financial input for Weekly Forecast", url: nil, file_url: nil},
  {id: 29, task_id: 6, code: "12110.001.04", sequence: 4, position_id: 20, owner: "", title: "Costs are input into template", description: "Receive input from HOD \r\nPrepare input into Weekly Forecast \r\nReturn to HOD for approval ", url: nil, file_url: nil},
  {id: 30, task_id: 6, code: "12110.001.05", sequence: 5, position_id: 13, owner: "", title: "Approve Forecast ", description: "Receive forecast from Business Accounting \r\nHOD Approves forecast and sends to Finance Dept", url: nil, file_url: nil},
  {id: 31, task_id: 7, code: "12101.002.01", sequence: 1, position_id: 20, owner: "", title: "Retrieve SIN", description: "Retrieve Service Item Note (SIN) from 121.022 Records for corresponding month from file. ", url: nil, file_url: nil},
  {id: 32, task_id: 7, code: "12101.002.02", sequence: 2, position_id: 20, owner: "", title: "Compile SIN", description: "Compile SIN values into CAMO Monthly Expense Report Template (MER) \r\nAssign SIN to corresponding aircraft. \r\nCalculate Totals as per template. \r\n", url: nil, file_url: nil},
  {id: 33, task_id: 7, code: "12101.002.03", sequence: 3, position_id: 20, owner: "", title: "Is data complete", description: "If data such as, cost of parts, is incomplete refer to 1.8 Finance for Financial Data, and recompile when received. \r\nOR \r\nForward to 121 CAMO Head if done. \r\n", url: nil, file_url: nil},
  {id: 34, task_id: 7, code: "12101.002.04", sequence: 4, position_id: 13, owner: "", title: "Review MER", description: "CAMO Head reviews the MER \r\n", url: nil, file_url: nil},
  {id: 35, task_id: 7, code: "12101.002.05", sequence: 5, position_id: 13, owner: "", title: "Approve MER", description: "HOD approves MER for release to 1.8 Finance \r\nOR \r\nReturn MER to business accountant for further info. \r\n", url: nil, file_url: nil},
  {id: 36, task_id: 8, code: "12102.003.01", sequence: 1, position_id: 20, owner: "", title: "Daily Retrieve AMO Man  Hours ", description: "Retrieve Man Hours Log from File", url: nil, file_url: nil},
  {id: 37, task_id: 8, code: "12102.003.02", sequence: 2, position_id: 20, owner: "", title: "Compile Man Hours", description: "Compile Man Hours into designated template \r\nCalculate Totals as per template. ", url: nil, file_url: nil},
  {id: 38, task_id: 8, code: "12102.003.03", sequence: 3, position_id: 20, owner: "", title: "Send to HOD for approval ", description: "At end of every month, \r\nsend completed Monthly Expense Report to CAMO Head ", url: nil, file_url: nil},
  {id: 39, task_id: 8, code: "12102.003.04", sequence: 4, position_id: 20, owner: "", title: "Send to HOD for approval", description: "At end of every month, \r\nsend completed Monthly Expense Report to CAMO Head ", url: nil, file_url: nil},
  {id: 40, task_id: 8, code: "12102.003.05", sequence: 5, position_id: 13, owner: "", title: "Approve Release ", description: "HOD Approves report and returns to 1.2.1.0.2 Business Accountant ", url: nil, file_url: nil},
  {id: 41, task_id: 8, code: "12102.003.06", sequence: 6, position_id: 13, owner: "", title: "Send to Finance Dept", description: "Send approved Weekly Forecast to __ in Finance Dept ", url: nil, file_url: nil},
  {id: 42, task_id: 9, code: "12102.004.01", sequence: 1, position_id: 20, owner: "", title: "Receives Project Accounting File", description: "Receives Project Accounting File From 12101 CAMO Project Manager", url: nil, file_url: nil},
  {id: 43, task_id: 9, code: "12102.004.02", sequence: 2, position_id: 20, owner: "", title: "Prepare Financial Input", description: "Translate project task list into financial plan template. \r\nSend to HOD for financial input ", url: nil, file_url: nil},
  {id: 44, task_id: 9, code: "12102.004.03", sequence: 3, position_id: 13, owner: "", title: "Study Costs", description: "CAMO Head studies costs and provides financial input to 12102 Business Accountant ", url: nil, file_url: nil},
  {id: 45, task_id: 9, code: "12102.004.04", sequence: 4, position_id: 20, owner: "", title: "Input costs into template ", description: "Receive input from HOD \r\nPrepare input into Project Budget Template \r\nSends to CAMO Head for approval ", url: nil, file_url: nil},
  {id: 46, task_id: 9, code: "12102.004.05", sequence: 5, position_id: 13, owner: "", title: "Approve Budget", description: "CAMO Head reviews budget and informs 12102 of approval", url: nil, file_url: nil},
  {id: 47, task_id: 9, code: "12102.004.06", sequence: 6, position_id: 20, owner: "", title: "Compile & Send to Finance ", description: "12102 compiles and send to finance ", url: nil, file_url: nil},
  {id: 48, task_id: 10, code: "19120.001.01", sequence: 1, position_id: 26, owner: "", title: "Receive Bond Request", description: "Training Manager receives Bond Request ", url: nil, file_url: nil},
  {id: 49, task_id: 10, code: "19120.001.02", sequence: 2, position_id: 26, owner: "", title: "Fill Bond Agreement Template", description: "Training Manager to fill Bond Agreement Template", url: nil, file_url: nil},
  {id: 77, task_id: 13, code: "19200.001.05", sequence: 5, position_id: 30, owner: "", title: "Update Status", description: "IT Support Engineer updates status in Form 33 inc;\r\nAssign a Report ID\r\nExpected Time of Arrival (of ordering hardware or parts)\r\nExpected Time of Completion\r\nAny solution proposed\r\n", url: nil, file_url: nil},
  {id: 50, task_id: 10, code: "19120.001.03", sequence: 3, position_id: 26, owner: "", title: "Verify Agreement ", description: "Ensure Bond Agreement is ", url: nil, file_url: nil},
  {id: 51, task_id: 10, code: "19120.001.04", sequence: 4, position_id: 26, owner: "", title: "Send Agreement", description: "Send copy of agreement to Employee to review", url: nil, file_url: nil},
  {id: 52, task_id: 10, code: "19120.001.05", sequence: 5, position_id: nil, owner: "Employee", title: "Receives Agreement", description: "Designated employee receives and reviews agreement. \r\n", url: nil, file_url: nil},
  {id: 53, task_id: 10, code: "19120.001.06", sequence: 6, position_id: nil, owner: "Employee", title: "Accepts Agreement", description: "Designated employee may accept agreement by signing the provided copy. ", url: nil, file_url: nil},
  {id: 55, task_id: 10, code: "19120.001.08", sequence: 8, position_id: 26, owner: "", title: "Accept & File ", description: "Training Manager accepts agreements and files appropriately. \r\nCopy of bond agreement to follow Training approval process", url: nil, file_url: nil},
  {id: 56, task_id: 11, code: "19122.001.01", sequence: 1, position_id: nil, owner: "HOD", title: "HOD nominates staff and  prepares training requisition. ", description: "", url: nil, file_url: nil},
  {id: 57, task_id: 11, code: "19122.001.02", sequence: 2, position_id: 28, owner: "", title: "Receives training requisition", description: "Receives training requisition and processes in accordance with category \r\n", url: nil, file_url: nil},
  {id: 58, task_id: 11, code: "19122.001.03", sequence: 3, position_id: 28, owner: "", title: "Bond requirements", description: "Verify if training requires a bond. Check with HR Manual ", url: nil, file_url: nil},
  {id: 59, task_id: 11, code: "19122.001.04", sequence: 4, position_id: 28, owner: "", title: "Create Bond Agreement", description: "Create bond agreement using Bond Template and submit to HOD for approval. ", url: nil, file_url: nil},
  {id: 60, task_id: 11, code: "19122.001.05", sequence: 5, position_id: nil, owner: "HOD", title: "HOD Approval", description: "HOD approve bonded training and submit to GMD", url: nil, file_url: nil},
  {id: 61, task_id: 11, code: "19122.001.06", sequence: 6, position_id: 1, owner: "", title: "GMD Approva", description: "Approval", url: nil, file_url: nil},
  {id: 62, task_id: 11, code: "19122.001.07", sequence: 7, position_id: 28, owner: "", title: "Training Registration", description: "Register staff for training with training provider. ", url: nil, file_url: nil},
  {id: 63, task_id: 11, code: "19122.001.08", sequence: 8, position_id: nil, owner: "Training Provider", title: "Training Provider Confirmation ", description: "Training provider confirms place in training session with invoice.", url: nil, file_url: nil},
  {id: 64, task_id: 11, code: "19122.001.09", sequence: 9, position_id: nil, owner: "HOD", title: "HOD confirms training ", description: "HOD confirms training with trainee, and \r\nplans arrangements for training and \r\nsubmits invoice from Training Provider", url: nil, file_url: nil},
  {id: 65, task_id: 11, code: "19122.001.10", sequence: 10, position_id: 28, owner: "", title: "Verify Invoice", description: "Verify Invoice and forward to Finance for payment", url: nil, file_url: nil},
  {id: 66, task_id: 11, code: "19122.001.11", sequence: 11, position_id: 10, owner: "", title: "Process Invoice ", description: "Verify invoice and process payment ", url: nil, file_url: nil},
  {id: 67, task_id: 11, code: "19122.001.12", sequence: 12, position_id: nil, owner: "Training Provider ", title: "Conduct Training", description: "Training is conducted as per order", url: nil, file_url: nil},
  {id: 68, task_id: 11, code: "19122.001.13", sequence: 13, position_id: nil, owner: "Employee", title: "Prepare Training Report ", description: "Staff prepare training report, with copy of certificate if any. ", url: nil, file_url: nil},
  {id: 69, task_id: 11, code: "19122.001.14", sequence: 14, position_id: 28, owner: "", title: "File Report ", description: "File the report in appropriate folder.", url: nil, file_url: nil},
  {id: 70, task_id: 12, code: "19122.003.01", sequence: 1, position_id: 28, owner: "", title: "Login to eTRIS ", description: "Login to HRDF eTRIS web application. ", url: nil, file_url: nil},
  {id: 71, task_id: 12, code: "19122.003.02", sequence: 2, position_id: 28, owner: "", title: "Submit HRDF Application ", description: "Submit the training grant claim application using eTRIS ", url: nil, file_url: nil},
  {id: 72, task_id: 12, code: "19122.003.03", sequence: 3, position_id: 28, owner: "", title: "Receive Approval", description: "Approval is received from HRDF", url: nil, file_url: nil},
  {id: 74, task_id: 13, code: "19200.001.02", sequence: 2, position_id: nil, owner: "HOD", title: "Approval by HOD", description: "HOD to approve or reject service request form", url: nil, file_url: nil},
  {id: 81, task_id: 14, code: "19110.001.01", sequence: 1, position_id: nil, owner: "HOD", title: "HOD Propose Allowance Activation", description: "Using the Activate Allowance form each respective HOD may propose an allowance for their staff", url: nil, file_url: "https://transmile.sharepoint.com/:b:/r/sites/msop/Documents/PEOPLE%20MANAGEMENT/Forms/Master%20Form/PDF/2)ACTIVATE%20OR%20DEACTIVATE%20ALLOWANCE%20-C%26B_2021.pdf?csf=1&web=1&e=QKdNBn"},
  {id: 75, task_id: 13, code: "19200.001.03", sequence: 3, position_id: 29, owner: "", title: "Create Job Card", description: "Accept approved Form 33 from HOD and create Job Card with IT Support infrastructure", url: nil, file_url: nil},
  {id: 76, task_id: 13, code: "19200.001.04", sequence: 4, position_id: 29, owner: "", title: "Assign to Support Engineer", description: "Assign task to Support Engineer", url: nil, file_url: nil},
  {id: 78, task_id: 13, code: "19200.001.06", sequence: 6, position_id: 30, owner: "", title: "Conduct Work", description: "Conduct Work, carry out work as requested or required", url: nil, file_url: nil},
  {id: 80, task_id: 13, code: "19200.001.07", sequence: 7, position_id: nil, owner: "Staff", title: "Accept & Close", description: "Requester to accept and sign of form 33.", url: nil, file_url: nil},
  {id: 79, task_id: 13, code: "19200.001.08", sequence: 8, position_id: 30, owner: "", title: "Close with Requester", description: "Update actual completion date in Form 33\r\nFile in appropriate file\r\n", url: nil, file_url: nil},
  {id: 73, task_id: 13, code: "19200.001.01", sequence: 1, position_id: nil, owner: "Staff", title: "Fill In Service Request Form", description: "User to fill in section A/B/C within Form  33  Service Request Form", url: nil, file_url: "https://transmile.sharepoint.com/:b:/r/sites/df/Documents/IT/e-%20FORM%2033%20SERVICE%20REQUEST%20FORM%202.0.pdf?csf=1&web=1&e=ea4Maz"},
  {id: 82, task_id: 14, code: "19110.001.02", sequence: 2, position_id: 25, owner: "", title: "Check & Verify", description: "Renumeration to check that employee is eligible for allowances and that verify that circumstances require that the proposed allowances to be activated.\r\nReturn to HOD should these not be compliant", url: nil, file_url: ""},
  {id: 83, task_id: 14, code: "19110.001.03", sequence: 3, position_id: 24, owner: "", title: "Review", description: "Head of People Management to review check by renumeration and confirm recommendation and compliance prior to approval submission", url: nil, file_url: ""},
  {id: 84, task_id: 14, code: "19110.001.01", sequence: 1, position_id: nil, owner: "System", title: "Reactivation Date", description: "If a reactivation date is recorded in a previous allowance de-activation, this should trigger an activation", url: nil, file_url: ""},
  {id: 85, task_id: 14, code: "19110.001.04", sequence: 4, position_id: 1, owner: "", title: "Approval", description: "Submission to GMD for approval of allowance activation", url: nil, file_url: ""},
  {id: 86, task_id: 14, code: "19110.001.05", sequence: 5, position_id: 25, owner: "", title: "Register Allowance in System", description: "On approval register the allowance in system", url: nil, file_url: ""},
  {id: 87, task_id: 14, code: "19110.001.05", sequence: 5, position_id: 1, owner: "", title: "Rejected", description: "Request is rejected, process ends", url: nil, file_url: ""},
  {id: 88, task_id: 14, code: "19110.001.06", sequence: 6, position_id: 25, owner: "", title: "Register Deactivation Date", description: "If a deactivation date is recorder, register the deactivation date as a trigger for future deactivation", url: nil, file_url: ""},
  {id: 89, task_id: 15, code: "19110.002.01", sequence: 1, position_id: nil, owner: "HOD", title: "HOD Propose Allowance De-Activation", description: "HOD, based on requirements, shall propose the end of allowance or suspension of allowance for a period of time.", url: nil, file_url: "https://transmile.sharepoint.com/:b:/r/sites/msop/Documents/PEOPLE%20MANAGEMENT/Forms/Master%20Form/PDF/2)ACTIVATE%20OR%20DEACTIVATE%20ALLOWANCE%20-C%26B_2021.pdf?csf=1&web=1&e=lo44EG"},
  {id: 90, task_id: 15, code: "19110.002.01", sequence: 1, position_id: nil, owner: "System", title: "Deactivation Date", description: "If a deactivation date is recorded in a previous allowance activation/reactivation, this should trigger an activation", url: nil, file_url: ""},
  {id: 91, task_id: 15, code: "19110.002.02", sequence: 2, position_id: 25, owner: "", title: "Check & Verify", description: "Renumeration to check that employee allowance deactivation is in line with policy and verify that circumstances require that the proposed allowances be de-activated. Return to HOD should these not be compliant", url: nil, file_url: ""},
  {id: 92, task_id: 15, code: "19110.002.03", sequence: 3, position_id: 24, owner: "", title: "Review", description: "Head of People Management to review check by renumeration and confirm recommendation and compliance prior to approval submission", url: nil, file_url: ""},
  {id: 93, task_id: 15, code: "19110.002.04", sequence: 4, position_id: 1, owner: "", title: "Approval", description: "Submission to GMD for approval of allowance activation", url: nil, file_url: ""},
  {id: 94, task_id: 15, code: "19110.002.05", sequence: 5, position_id: 25, owner: "", title: "Deactivate Allowance in System", description: "On approval deregister the allowance in system", url: nil, file_url: ""},
  {id: 95, task_id: 15, code: "19110.002.06", sequence: 6, position_id: 25, owner: "", title: "Register Reactivation Date", description: "If a reactivation date is recorder, register the deactivation date as a trigger for future deactivation", url: nil, file_url: ""},
  {id: 97, task_id: 16, code: "12400.001.04", sequence: 4, position_id: 16, owner: "", title: "Send Message", description: "Message sent using on-line form, and applied with corresponding template and distribution list.", url: nil, file_url: ""},
  {id: 98, task_id: 16, code: "12400.001.05", sequence: 5, position_id: nil, owner: "Distribution List Member", title: "Message delivered via email and received.", description: "Message is received by each member of distribution list", url: nil, file_url: ""},
  {id: 99, task_id: 16, code: "12400.001.06", sequence: 6, position_id: nil, owner: "Distribution List Member", title: "Acknowledge Message", description: "Recipient reads message and attachment and acknowledges receipt.\r\nEach acknowledgment is stored in an acknowledgement list.", url: nil, file_url: ""},
  {id: 100, task_id: 16, code: "12400.001.07", sequence: 7, position_id: nil, owner: "System", title: "Send Reminder", description: "If no acknowledgment is received, a reminder is sent to the recipient, for acknowledgment", url: nil, file_url: ""},
  {id: 101, task_id: 16, code: "12400.001.08", sequence: 8, position_id: nil, owner: "Distribution List Member", title: "Terminate if not Acknowledged", description: "If after reminder, no acknowledgement is received, the process is terminated as \"not acknowledged\"", url: nil, file_url: ""},
  {id: 96, task_id: 16, code: "12400.001.01", sequence: 1, position_id: 4, owner: "", title: "Prepare Message", description: "Prepare the message using the designated on-line form", url: nil, file_url: ""},
  {id: 54, task_id: 10, code: "19120.001.07", sequence: 7, position_id: nil, owner: "Employee", title: "Returns Signed Agreement", description: "Employee returns signed copy of bond agreement to Training Manager. \r\n", url: nil, file_url: ""}
])
Position.create!([
  {id: 1, code: 1, combo_code: "1", parent_id: nil, name: "GMD", mission: ""},
  {id: 18, code: 8, combo_code: "1.1.8", parent_id: 4, name: "Aviation Security", mission: ""},
  {id: 24, code: 1, combo_code: "1.6.1", parent_id: 11, name: "People Management", mission: ""},
  {id: 2, code: 0, combo_code: "1.0", parent_id: 1, name: "Assistant For", mission: ""},
  {id: 32, code: 1, combo_code: "1.0.1", parent_id: 2, name: "Strategic Communications", mission: ""},
  {id: 33, code: 2, combo_code: "1.0.2", parent_id: 2, name: "Strategy & Business Transformation", mission: ""},
  {id: 19, code: 1, combo_code: "1.0.2.1", parent_id: 33, name: "Pricing", mission: "The Pricing and Performance Dept develops a pricing mechanism for publishing and updating the price and provides ad-hoc pricing to the  Business Development unit. This department also maintains the master list of Aircraft Charter Agreements and provides pricing and renewal  information on request."},
  {id: 25, code: 1, combo_code: "1.6.1.1", parent_id: 24, name: "Compensation & Benefits", mission: ""},
  {id: 26, code: 2, combo_code: "1.6.1.2", parent_id: 24, name: "Recruitment, IR & ER, Training", mission: ""},
  {id: 5, code: 11, combo_code: "1.11", parent_id: 1, name: "Quality Assurance", mission: ""},
  {id: 27, code: 1, combo_code: "1.6.1.2.1", parent_id: 26, name: "Recruitment", mission: ""},
  {id: 3, code: 2, combo_code: "1.2", parent_id: 1, name: "Chief Commercial Officer", mission: ""},
  {id: 4, code: 1, combo_code: "1.1", parent_id: 1, name: "Chief Operating Officer", mission: ""},
  {id: 10, code: 3, combo_code: "1.3", parent_id: 1, name: "Chief Financial Officer", mission: ""},
  {id: 6, code: 1, combo_code: "1.1.1", parent_id: 4, name: "Safety Management Systems", mission: ""},
  {id: 28, code: 2, combo_code: "1.6.1.2.2", parent_id: 26, name: "Training", mission: ""},
  {id: 8, code: 4, combo_code: "1.4", parent_id: 1, name: "Chief Governance Officer", mission: ""},
  {id: 7, code: 1, combo_code: "1.4.1", parent_id: 8, name: "Enterprise Compliance Management", mission: ""},
  {id: 9, code: 5, combo_code: "1.5", parent_id: 1, name: "Head of Legal, Secretarial & Compliance", mission: ""},
  {id: 11, code: 6, combo_code: "1.6", parent_id: 1, name: "Head of PMD & Corporate Services", mission: ""},
  {id: 12, code: 2, combo_code: "1.1.2", parent_id: 4, name: "Systems & Application", mission: ""},
  {id: 15, code: 3, combo_code: "1.1.3", parent_id: 4, name: "Operations Control Centre", mission: ""},
  {id: 13, code: 5, combo_code: "1.1.5", parent_id: 4, name: "CAMO", mission: ""},
  {id: 21, code: 0, combo_code: "1.1.5.0", parent_id: 13, name: "Assistant For", mission: "The CAMO Business Accounting assists the CAMO Office in preparing budget requirements, and consequentially issuing expense reports for consumption by Finance."},
  {id: 20, code: 1, combo_code: "1.1.5.0.1", parent_id: 21, name: "CAMO Business Accountant", mission: "The CAMO Business Accounting assists the CAMO Office in preparing budget requirements, and consequentially issuing expense reports for consumption by Finance."},
  {id: 22, code: 1, combo_code: "1.1.5.1", parent_id: 13, name: "Technical Services", mission: ""},
  {id: 23, code: 2, combo_code: "1.1.5.2", parent_id: 13, name: "Planning & Records", mission: ""},
  {id: 14, code: 6, combo_code: "1.1.6", parent_id: 4, name: "AMO", mission: ""},
  {id: 16, code: 7, combo_code: "1.1.7", parent_id: 4, name: "Flight Operations", mission: ""},
  {id: 30, code: 1, combo_code: "1.6.2.1", parent_id: 29, name: "Senior IT Support", mission: ""},
  {id: 17, code: 9, combo_code: "1.1.9", parent_id: 4, name: "Ground Business & Operations", mission: ""},
  {id: 34, code: 1, combo_code: "1.2.1", parent_id: 3, name: "Business Development", mission: ""},
  {id: 35, code: 2, combo_code: "1.2.2", parent_id: 3, name: "Network Planning", mission: ""},
  {id: 36, code: 3, combo_code: "1.2.3", parent_id: 3, name: "Commercial Operations", mission: ""},
  {id: 37, code: 1, combo_code: "1.3.1", parent_id: 10, name: "Financial Reporting", mission: ""},
  {id: 38, code: 2, combo_code: "1.3.2", parent_id: 10, name: "Finance Operations", mission: ""},
  {id: 39, code: 3, combo_code: "1.3.3", parent_id: 10, name: "Procurement", mission: ""},
  {id: 40, code: 4, combo_code: "1.3.4", parent_id: 10, name: "Investor Relations", mission: ""},
  {id: 41, code: 5, combo_code: "1.3.5", parent_id: 10, name: "Corporate Finance", mission: ""},
  {id: 42, code: 2, combo_code: "1.4.2", parent_id: 8, name: "Enterprise Risk Management", mission: ""},
  {id: 43, code: 3, combo_code: "1.4.3", parent_id: 8, name: "Quality Assurance (CAMO)", mission: ""},
  {id: 44, code: 4, combo_code: "1.4.4", parent_id: 8, name: "Quality Assurance (AMO)", mission: ""},
  {id: 45, code: 1, combo_code: "1.5.1", parent_id: 9, name: "Legal", mission: ""},
  {id: 46, code: 2, combo_code: "1.5.2", parent_id: 9, name: "Secretarial", mission: ""},
  {id: 47, code: 2, combo_code: "1.6.2", parent_id: 11, name: "Corporate Services", mission: ""},
  {id: 29, code: 3, combo_code: "1.6.2.3", parent_id: 47, name: "IT Management", mission: ""},
  {id: 31, code: 2, combo_code: "1.6.2.3.2", parent_id: 29, name: "IT Support", mission: ""}
])
