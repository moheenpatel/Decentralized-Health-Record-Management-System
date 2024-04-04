pragma solidity ^0.8.0;

contract HealthRecord {
    // Struct to store doctor details
    struct Doctor {
        string name;
        string qualification;
        string workPlace;
    }
    // Struct to store patient details
    struct Patient {
        string name;
        uint256 age;
        string[] diseases;
        address doctor;
        uint256[] medicines;
    }
    // Struct to store medicine details
    struct Medicine {
        uint256 id;
        string name;
        string expiryDate;
        string dose;
        uint256 price;
    }

    // Mapping to store doctors' details using their addresses
    mapping(address => Doctor) public doctors;

    // Mapping to store patients' details using their addresses
    mapping(address => Patient) public patients;

    // Mapping to store medicines' details using their IDs
    mapping(uint256 => Medicine) public medicines;


    // Function to register a new doctor
    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctors[msg.sender] = Doctor(_name, _qualification, _workPlace);
    }

    // Function to register a new patient
    function registerPatient(string memory _name, uint256 _age) public {
        patients[msg.sender] = Patient(_name, _age, new string[](0), address(0), new uint256[](0));
    }

    // Function to assign a doctor to a patient
    function assignDoctor(address _patient, address _doctor) public {
        require(msg.sender == _doctor, "Only the doctor can assign themselves to a patient");
        patients[_patient].doctor = _doctor;
    }

    // Function to add a disease to a patient's record
    function addPatientDisease(string memory _disease) public {
        patients[msg.sender].diseases.push(_disease);
    }

    // Function to add a new medicine
    function addMedicine(uint256 _id, string memory _name, string memory _expiryDate, string memory _dose, uint256 _price) public {
        medicines[_id] = Medicine(_id, _name, _expiryDate, _dose, _price);
    }

    // Function for a doctor to prescribe medicine to a patient
    function prescribeMedicine(uint256 _id, address _patient) public {
        patients[_patient].medicines.push(_id);
    }

    // Function for a patient to update their details
    function updatePatientDetails(uint256 _age) public {
        patients[msg.sender].age = _age;
    }

    // Function to view a patient's data
    function viewPatientData(address _patient) public view returns (string memory, uint256, string[] memory, address) {
        Patient storage patient = patients[_patient];
        return (patient.name, patient.age, patient.diseases, patient.doctor);
    }

    // Function to view medicine details
    function viewMedicineDetails(uint256 _id) public view returns (string memory, string memory, string memory, uint256) {
        Medicine storage medicine = medicines[_id];
        return (medicine.name, medicine.expiryDate, medicine.dose, medicine.price);
    }

    // Function for a doctor to view a patient's data
    function viewPatientDataByDoctor(address _doctor, address _patient) public view returns (string memory, uint256, string[] memory, address) {
        require(patients[_patient].doctor == _doctor, "Doctor is not assigned to this patient");
        return viewPatientData(_patient);
    }

    // Function to view prescribed medicines for a patient
    function viewPrescribedMedicine(address _patient) public view returns (uint256[] memory) {
        return patients[_patient].medicines;
    }

    // Function to view doctor details
    function viewDoctorDetails(address _doctor) public view returns (string memory, string memory, string memory) {
        Doctor storage doctor = doctors[_doctor];
        return (doctor.name, doctor.qualification, doctor.workPlace);
    }
}
