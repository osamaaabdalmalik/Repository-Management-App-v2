import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class GetSalesInvoiceArchiveUseCase {
  final SalesInvoiceRepo repo;

  GetSalesInvoiceArchiveUseCase(this.repo);

  Future<Either<Failure, SalesInvoice>> call({required int id}) async {
    Get.find<Logger>().i("Call GetSalesInvoiceArchiveUseCase");
    return await repo.getSalesInvoiceArchive(id: id);
  }
}
