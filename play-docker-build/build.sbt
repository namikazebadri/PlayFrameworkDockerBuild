name := """play-docker-build"""
organization := "com.unisbadri.playdockerbuild"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayJava)

scalaVersion := "2.13.3"

libraryDependencies += guice
