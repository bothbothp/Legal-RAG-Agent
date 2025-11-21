# ใช้ Python เวอร์ชัน 3.10 ซึ่งเสถียรและเข้ากันได้กับ LangChain เวอร์ชันเก่า
FROM python:3.10

# ตั้งค่า working directory
WORKDIR /app

# คัดลอกไฟล์ requirements.txt และติดตั้ง dependencies
COPY./ requirements.txt./# ใช้ Python เวอร์ชัน 3.10 ซึ่งเสถียรและเข้ากันได้กับ LangChain เวอร์ชันเก่า
FROM python:3.10

# ตั้งค่า working directory
WORKDIR /app

# คัดลอกไฟล์ requirements.txt และติดตั้ง dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกไฟล์โค้ดทั้งหมด (รวมถึง legal_agent.py และ my_laws.xlsx ถ้ามี)
COPY . .

# กำหนดให้รัน Streamlit เมื่อ container ถูกเปิด
CMD ["streamlit", "run", "legal_agent.py"]
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกไฟล์โค้ดทั้งหมด (รวมถึง legal_agent.py และ my_laws.xlsx ถ้ามี)
COPY . .

# กำหนดให้รัน Streamlit เมื่อ container ถูกเปิด
CMD streamlit run legal_agent.py

# คัดลอกไฟล์โค้ดทั้งหมด (รวมถึง legal_agent.py และ my_laws.xlsx ถ้ามี)
COPY . .

# กำหนดให้รัน Streamlit เมื่อ container ถูกเปิด (ใช้รูปแบบ Exec Form เพื่อความเสถียร)
CMD ["streamlit", "run", "legal_agent.py"]
