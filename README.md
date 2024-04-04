# Blockchain Based Decentralized Health Record Management System

## Table of Content

## Problem Statement
The patient record is one of the important assets that is currently centralized, maintained, and managed by hospitals. Some countries have moved to Electronic Health Record (EHR), and many countries still follow the old method to store the patient and medical details. Around 80 to 90% of the hospitals in the United States have adopted basic EHR systems, which have a lot of problems related to privacy, security, and ownership of these health records. Even after moving to EHR, the patient record is completely owned and controlled by hospitals, and being the owner of that record, a patient does not have access to the data and has to always reach out to hospitals to get it. Data consolidation is one of the biggest challenges as every hospital stores these EHRs on their server. The patients need to access different EHRs to consolidate their complete medical history. Since hospitals own the EHRs, they have full control and can manipulate the data at any moment. They can even sell the data to research organization and earn a good amount of money. Along with the patient record, doctor authenticity is another challenge that is faced as there is no direct way to check if the doctor is real or not.

## Solution
Blockchain is a technology that has the potential to support transparency and accountability. A blockchain is a ledger of transactions where an identical copy is visible to all the members of a computer network. Network members validate the data entered into the ledger, and once entered, the data is immutable. With the help of Blockchain technology, a solution can be developed to store the EHR of any patient in a distributed and decentralized network. With blockchain solutions, patients can own their data and can approve hospitals, doctors, and research organizations to access their data.  

The **Decentralized Health Record Management System** employs blockchain technology to ensure transparency and accountability in managing patient data. Utilizing a distributed and decentralized network, patients can securely store and manage their Electronic Health Records (EHRs). This system allows patients to control access to their data, granting permissions to hospitals, doctors, and research organizations.  

This system focuses on two primary roles:
- Patient
- Doctor

A **Patient** can do the following functions:  
- Register to the portal
- Add new diseases 
- View their records
- Update their data

A **Doctor** can do the following things:  
- Register to the portal
- Access and add the records of their patients
- Prescribe medicine to a patient

### Features of this Application:  
- **Register a New Doctor**  
  Function to register a new doctor to the ledger.  
  Parameters: Name, qualification, and workplace address of the doctor.  

- **Register a New Patient**  
  Function to register a new patient to the ledger.  
  Parameters: Name and age of the patient.

- **Add a Patient's Disease**  
  Function to add a disease to a patient's record.  
  Parameter: Name of the disease.

- **Add Medicine**  
  Function to add medicines to the system.  
  Parameters: Id, name, expiry date, dose, and price of the medicine.  

- **Prescribe Medicine**  
  Function for doctors to prescribe medicine to a patient.  
  Parameters: Medicine Id and patient's address.  

- **Update Patient Details by Patient**  
  Function for patients to update their age.  
  Parameter: New age of the patient.  

- **View Patient Data**  
  Function to view patient data stored in the blockchain.  
  Parameter: Patient id  
  Returns: age, name, list of diseases and doctor assigned.  

- **View Medicine Details**  
  Function to fetch details of a medicine.  
  Parameter: Medicine Id.  
  Returns: Name, expiry date, dose, and price of the medicine.  

- **View Patient Data by a Doctor**  
  Function for a doctor to view patient data.  
  Parameter: Doctor ID, Patient ID.  
  Returns: age, name, list of diseases and doctor assigned.

- **View Prescribed Medicine to the Patient**  
  Function for a doctor to view prescribed medicines to a patient.  
  Parameter: Patient's ID.  
  Returns: List of medicine IDs.  

- **View Doctor Details**  
  Function to view doctor details.  
  Parameter: Doctor ID.  
  Returns: name, qualification, and workplace address.

### Tools and Technologies Used:  
* **Smart Contract Development:** Solidity
* **IDE Tool:** Remix
* **Blockchain Platform:** Ethereum
* **Local Blockchain Network:** Ganache  

### Application Testing and Demo :  
