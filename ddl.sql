-- 데이터베이스 생성 및 선택
CREATE DATABASE IF NOT EXISTS smileage;
USE smileage;

-- 테이블 삭제 (이미 존재하는 경우)
DROP TABLE IF EXISTS smileage;
DROP TABLE IF EXISTS users;

-- 테이블 생성
CREATE TABLE users (
    userCode INT AUTO_INCREMENT,
    userName VARCHAR(100) NOT NULL,
    userFace VARCHAR(255) NOT NULL,
    PRIMARY KEY (userCode)
);

CREATE TABLE smileage (
    userCode INT NOT NULL,
    mileage INT NOT NULL,
    FOREIGN KEY (userCode) REFERENCES users(userCode)
);

ALTER TABLE users MODIFY userFace BLOB;