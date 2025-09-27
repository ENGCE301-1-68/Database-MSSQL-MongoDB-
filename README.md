# 🎓 Node.js Database API (MS SQL Server + MongoDB)

โปรเจกต์นี้เป็น REST API ที่เชื่อมต่อทั้ง **MS SQL Server** (สำหรับ Students) และ **MongoDB** (สำหรับ Products)  
สร้างด้วย **Node.js + Express**

---

## 🚀 Quick Start

```bash
# 1. Clone และ install dependencies
npm install

# 2. สร้าง environment file
cp .env.example .env

# 3. Start development server
npm run dev

# 4. Test API
ทดสอบ Students API (MS SQL)
GET http://localhost:3000/api/students

ทดสอบ Products API (MongoDB)
GET http://localhost:3000/api/products
