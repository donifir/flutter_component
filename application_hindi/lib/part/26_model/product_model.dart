import 'package:flutter/material.dart';

class ProductModel{
  @required String judul;
  @required String imageUrl;
  @required int harga;
  @required String deskripsi;

  ProductModel(this.judul,this.imageUrl,this.harga,this.deskripsi);
}