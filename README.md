# Blockchain Based Decentralized Health Record Management System

## Table of Content
- [Problem Statement](#problem-statement)
- [Solution](#solution)
  - [Features of this Application](#features-of-this-application)
  - [Tools and Technologies Used](#tools-and-technologies-used)
  - [Application Testing and Demo](#application-testing-and-demo-)
- [Advantages of Decentralized Health Record Management System over Traditional Electronic Health Records (EHRs)](#advantages-of-decentralized-health-record-management-system-over-traditional-electronic-health-records-ehrs)
- [Conclusion](#conclusion)  


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

### Application Testing and Demo :  

- Opened Remix IDE and developed a Smart contract namely [**patient_record_storage.sol**](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/blob/main/patient_record_storage.sol)
![Screenshot from 2024-04-04 17-13-08](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/4b2987ef-f524-4d87-badf-819563ff8448)

- Code compiled successfully.
![Screenshot from 2024-04-04 17-13-34](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/25f75953-ba86-4cb9-b59c-cb5c315039f5)

- Successfully deployed the smart contract onto the Ethereum Blockchain. Below is the Output of all the Functions which will be used in execution of this application.  
  ![Screenshot from 2024-04-04 18-26-52](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/4387661d-c7cf-4edb-b822-b02a0032903b) ![Screenshot from 2024-04-04 18-27-04](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/951ba4e5-b2f0-44fc-a7e4-d9ba2f1e286c) ![Screenshot from 2024-04-04 18-27-13](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/f7b00521-323a-4263-8483-9d0906cd777e)  

- Register a Doctor (address : 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)  
  ![Screenshot from 2024-04-04 18-28-00](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/f4bf43d7-012a-4637-ab7c-9aad87e3a34e)

- View Doctor details  
  ![Screenshot from 2024-04-04 18-28-51](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/bd78837d-87fd-422a-8440-ed0a39be9d8f)

- Register a Patient (address : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2)  
  ![Screenshot from 2024-04-04 18-29-32](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/c829aa2d-eb84-44a3-82b2-6907ecc0be47)

- Assign above doctor to the above patient  
  ![Screenshot from 2024-04-04 18-30-36](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/4baef893-ec1a-4a1a-ba9c-8bd73e8c68fd)

- Add a disease to a patient's record (Patient address : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2)  
  ![Screenshot from 2024-04-04 18-32-12](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/c5e0ca41-af43-4edd-a482-c86ed8840acc)

- View Patient Data  
  ![Screenshot from 2024-04-04 18-34-28](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/7a427007-6482-4502-b060-6e432dff3120)

- Add a medicine to the system  
  ![Screenshot from 2024-04-04 18-38-41](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/f3b2ff74-181d-4563-971f-d256fae1f2ed)

- Prescribe medicine to a patient  
![Screenshot from 2024-04-04 18-40-28](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/f3d1c3e4-fa73-4a20-b112-abdf5add9806)

- Update Patient Details  
  ![Screenshot from 2024-04-04 18-41-21](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/b037e276-6c84-4f58-9d2d-ac6d7677392a)

- View Updated Patient Data  
![Screenshot from 2024-04-04 18-41-49](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/b3b8fe67-f11c-4db7-b623-2e2671a3ff36)

- View Medicine Details  
  ![Screenshot from 2024-04-04 18-44-42](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/3130d4e3-6853-497b-a700-8d7668102f98)

- View Patient Data by a Doctor  
  ![Screenshot from 2024-04-04 18-51-57](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/c0071354-8400-4d51-910a-a16366fc5d66)

- View Prescribed Medicine to the Patient  
  ![Screenshot from 2024-04-04 18-53-19](https://github.com/moheenpatel/Decentralized-Health-Record-Management-System/assets/72771390/24f4e20b-67d9-4e86-a374-f486eb7c9e40)  


### $${\color{red}End \space of \space Application \space Testing \space and \space Demo}$$  
<br>

----



# Advantages of Decentralized Health Record Management System over Traditional Electronic Health Records (EHRs)  
1. **Data Ownership**: In a decentralized system, patients have full ownership and control over their health records. They can grant access to healthcare providers or researchers as needed, without relying on centralized entities.

2. **Data Security**: Decentralized systems use cryptographic techniques to secure data, making it more resistant to unauthorized access and tampering compared to traditional EHRs, which are vulnerable to centralized data breaches.

3. **Transparency**: The transparent nature of blockchain technology ensures that all transactions and changes to health records are recorded and visible to authorized parties, enhancing trust and accountability.

4. **Interoperability**: Decentralized systems can improve interoperability between different healthcare providers and systems, allowing for seamless sharing of health records across borders and systems.

5. **Privacy**: Blockchain technology enables patients to control who can access their health data, protecting their privacy and ensuring that sensitive information is not shared without consent.

6. **Reduced Costs**: By eliminating the need for intermediaries and redundant record-keeping processes, decentralized systems can reduce administrative costs associated with managing health records.

7. **Immutable Records**: Health records stored on a blockchain are immutable, meaning that once a record is created, it cannot be altered or deleted. This ensures the integrity and authenticity of health data.

8. **Patient Empowerment**: Decentralized systems empower patients to actively participate in their healthcare by giving them greater control over their health data and treatment decisions.



# Conclusion  
In conclusion, the implementation of a Decentralized Health Record Management System powered by blockchain technology addresses critical issues present in traditional Electronic Health Records (EHRs). By decentralizing patient data, this system ensures greater privacy, security, and patient control over their health information. It eliminates the need for data consolidation across multiple hospitals, providing a comprehensive and easily accessible medical history for patients. Moreover, by enabling patients to own and manage their health records, and by verifying doctor authenticity, this system promotes transparency and accountability in healthcare data management. Overall, this project demonstrates the transformative potential of decentralized systems in revolutionizing healthcare data management for improved patient outcomes and aims to revolutionize the healthcare industry by promoting data transparency, security, and patient-centric care.








