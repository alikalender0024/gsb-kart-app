/*
  Warnings:

  - The values [TOPUP,PAYMENT,TRANSFER,REFUND,WITHDRAW] on the enum `TransactionType` will be removed. If these variants are still used in the database, this will fail.
  - The primary key for the `AuthSession` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `deviceInfo` on the `AuthSession` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `AuthSession` table. All the data in the column will be lost.
  - You are about to drop the column `ipAddress` on the `AuthSession` table. All the data in the column will be lost.
  - You are about to drop the column `refreshToken` on the `AuthSession` table. All the data in the column will be lost.
  - You are about to drop the column `userAgent` on the `AuthSession` table. All the data in the column will be lost.
  - The `id` column on the `AuthSession` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Card` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `cardType` on the `Card` table. All the data in the column will be lost.
  - You are about to drop the column `currency` on the `Card` table. All the data in the column will be lost.
  - You are about to drop the column `expiryDate` on the `Card` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `Card` table. All the data in the column will be lost.
  - You are about to drop the column `limit` on the `Card` table. All the data in the column will be lost.
  - The `id` column on the `Card` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Event` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `category` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `eventDate` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `location` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `organizer` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `quota` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Event` table. All the data in the column will be lost.
  - The `id` column on the `Event` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Notification` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `isRead` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `Notification` table. All the data in the column will be lost.
  - The `id` column on the `Notification` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Product` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `category` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `imageUrl` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `isAvailable` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `stockQuantity` on the `Product` table. All the data in the column will be lost.
  - The `id` column on the `Product` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Purchase` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `price` on the `Purchase` table. All the data in the column will be lost.
  - You are about to drop the column `purchasedAt` on the `Purchase` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `Purchase` table. All the data in the column will be lost.
  - The `id` column on the `Purchase` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `QrOperation` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `amount` on the `QrOperation` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `QrOperation` table. All the data in the column will be lost.
  - You are about to drop the column `operationType` on the `QrOperation` table. All the data in the column will be lost.
  - You are about to drop the column `qrCode` on the `QrOperation` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `QrOperation` table. All the data in the column will be lost.
  - The `id` column on the `QrOperation` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `transactionId` column on the `QrOperation` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Ticket` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `isUsed` on the `Ticket` table. All the data in the column will be lost.
  - You are about to drop the column `qrCode` on the `Ticket` table. All the data in the column will be lost.
  - You are about to drop the column `usedAt` on the `Ticket` table. All the data in the column will be lost.
  - The `id` column on the `Ticket` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Transaction` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `completedAt` on the `Transaction` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `Transaction` table. All the data in the column will be lost.
  - You are about to drop the column `referenceId` on the `Transaction` table. All the data in the column will be lost.
  - The `id` column on the `Transaction` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `isActive` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `passwordHash` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `tckn` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `User` table. All the data in the column will be lost.
  - The `id` column on the `User` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `UserProfile` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `address` on the `UserProfile` table. All the data in the column will be lost.
  - You are about to drop the column `avatarUrl` on the `UserProfile` table. All the data in the column will be lost.
  - You are about to drop the column `city` on the `UserProfile` table. All the data in the column will be lost.
  - You are about to drop the column `district` on the `UserProfile` table. All the data in the column will be lost.
  - You are about to drop the column `gender` on the `UserProfile` table. All the data in the column will be lost.
  - The `id` column on the `UserProfile` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `token` to the `AuthSession` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `userId` on the `AuthSession` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `Card` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `date` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Event` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `userId` on the `Notification` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `Purchase` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `productId` on the `Purchase` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `QrOperation` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `eventId` on the `Ticket` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `Ticket` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `cardId` on the `Transaction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `userId` on the `UserProfile` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "TransactionType_new" AS ENUM ('LOAD', 'SPEND');
ALTER TABLE "Transaction" ALTER COLUMN "type" TYPE "TransactionType_new" USING ("type"::text::"TransactionType_new");
ALTER TYPE "TransactionType" RENAME TO "TransactionType_old";
ALTER TYPE "TransactionType_new" RENAME TO "TransactionType";
DROP TYPE "TransactionType_old";
COMMIT;

-- DropForeignKey
ALTER TABLE "AuthSession" DROP CONSTRAINT "AuthSession_userId_fkey";

-- DropForeignKey
ALTER TABLE "Card" DROP CONSTRAINT "Card_userId_fkey";

-- DropForeignKey
ALTER TABLE "Notification" DROP CONSTRAINT "Notification_userId_fkey";

-- DropForeignKey
ALTER TABLE "Purchase" DROP CONSTRAINT "Purchase_productId_fkey";

-- DropForeignKey
ALTER TABLE "Purchase" DROP CONSTRAINT "Purchase_userId_fkey";

-- DropForeignKey
ALTER TABLE "QrOperation" DROP CONSTRAINT "QrOperation_transactionId_fkey";

-- DropForeignKey
ALTER TABLE "QrOperation" DROP CONSTRAINT "QrOperation_userId_fkey";

-- DropForeignKey
ALTER TABLE "Ticket" DROP CONSTRAINT "Ticket_eventId_fkey";

-- DropForeignKey
ALTER TABLE "Ticket" DROP CONSTRAINT "Ticket_userId_fkey";

-- DropForeignKey
ALTER TABLE "Transaction" DROP CONSTRAINT "Transaction_cardId_fkey";

-- DropForeignKey
ALTER TABLE "UserProfile" DROP CONSTRAINT "UserProfile_userId_fkey";

-- DropIndex
DROP INDEX "QrOperation_transactionId_key";

-- AlterTable
ALTER TABLE "AuthSession" DROP CONSTRAINT "AuthSession_pkey",
DROP COLUMN "deviceInfo",
DROP COLUMN "expiresAt",
DROP COLUMN "ipAddress",
DROP COLUMN "refreshToken",
DROP COLUMN "userAgent",
ADD COLUMN     "token" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "AuthSession_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Card" DROP CONSTRAINT "Card_pkey",
DROP COLUMN "cardType",
DROP COLUMN "currency",
DROP COLUMN "expiryDate",
DROP COLUMN "isActive",
DROP COLUMN "limit",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Card_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Event" DROP CONSTRAINT "Event_pkey",
DROP COLUMN "category",
DROP COLUMN "description",
DROP COLUMN "eventDate",
DROP COLUMN "isActive",
DROP COLUMN "location",
DROP COLUMN "organizer",
DROP COLUMN "quota",
DROP COLUMN "title",
ADD COLUMN     "date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Event_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Notification" DROP CONSTRAINT "Notification_pkey",
DROP COLUMN "isRead",
DROP COLUMN "title",
DROP COLUMN "type",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Notification_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Product" DROP CONSTRAINT "Product_pkey",
DROP COLUMN "category",
DROP COLUMN "description",
DROP COLUMN "imageUrl",
DROP COLUMN "isAvailable",
DROP COLUMN "stockQuantity",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Purchase" DROP CONSTRAINT "Purchase_pkey",
DROP COLUMN "price",
DROP COLUMN "purchasedAt",
DROP COLUMN "status",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
DROP COLUMN "productId",
ADD COLUMN     "productId" INTEGER NOT NULL,
ALTER COLUMN "quantity" DROP DEFAULT,
ADD CONSTRAINT "Purchase_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "QrOperation" DROP CONSTRAINT "QrOperation_pkey",
DROP COLUMN "amount",
DROP COLUMN "expiresAt",
DROP COLUMN "operationType",
DROP COLUMN "qrCode",
DROP COLUMN "status",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
DROP COLUMN "transactionId",
ADD COLUMN     "transactionId" INTEGER,
ADD CONSTRAINT "QrOperation_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Ticket" DROP CONSTRAINT "Ticket_pkey",
DROP COLUMN "isUsed",
DROP COLUMN "qrCode",
DROP COLUMN "usedAt",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "eventId",
ADD COLUMN     "eventId" INTEGER NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Ticket_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Transaction" DROP CONSTRAINT "Transaction_pkey",
DROP COLUMN "completedAt",
DROP COLUMN "description",
DROP COLUMN "referenceId",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "cardId",
ADD COLUMN     "cardId" INTEGER NOT NULL,
ADD CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "isActive",
DROP COLUMN "passwordHash",
DROP COLUMN "phone",
DROP COLUMN "tckn",
DROP COLUMN "updatedAt",
ADD COLUMN     "password" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ALTER COLUMN "lastName" DROP NOT NULL,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "UserProfile" DROP CONSTRAINT "UserProfile_pkey",
DROP COLUMN "address",
DROP COLUMN "avatarUrl",
DROP COLUMN "city",
DROP COLUMN "district",
DROP COLUMN "gender",
ADD COLUMN     "phone" TEXT,
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "UserProfile_pkey" PRIMARY KEY ("id");

-- DropEnum
DROP TYPE "NotificationType";

-- DropEnum
DROP TYPE "QrOperationStatus";

-- DropEnum
DROP TYPE "QrOperationType";

-- CreateIndex
CREATE UNIQUE INDEX "UserProfile_userId_key" ON "UserProfile"("userId");

-- AddForeignKey
ALTER TABLE "UserProfile" ADD CONSTRAINT "UserProfile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AuthSession" ADD CONSTRAINT "AuthSession_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Card" ADD CONSTRAINT "Card_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Transaction" ADD CONSTRAINT "Transaction_cardId_fkey" FOREIGN KEY ("cardId") REFERENCES "Card"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "QrOperation" ADD CONSTRAINT "QrOperation_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "QrOperation" ADD CONSTRAINT "QrOperation_transactionId_fkey" FOREIGN KEY ("transactionId") REFERENCES "Transaction"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Purchase" ADD CONSTRAINT "Purchase_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Purchase" ADD CONSTRAINT "Purchase_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notification" ADD CONSTRAINT "Notification_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
