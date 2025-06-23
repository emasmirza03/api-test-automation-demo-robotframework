# 🤖 Robot Framework API Test – Reqres

API automation test suite using [Reqres API](https://reqres.in)  
Built with **Robot Framework** + **RequestsLibrary**

---

## 📦 Project Structure
tests/
├── users/        ← GET, POST, DELETE user
└── auth/         ← Login positive/negative

resources/
├── keywords.robot
└── variables.yaml

---

## 🧰 Tech Stack

- [Robot Framework](https://robotframework.org/)
- [RequestsLibrary](https://marketsquare.github.io/robotframework-requests/)
- [YAML Variables](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variable-files)

---

## ▶️ How to Run

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Run all tests
robot tests/

# 3. Run only auth tests
robot tests/auth/

# 4. Run with output to results/
robot -d results tests/
