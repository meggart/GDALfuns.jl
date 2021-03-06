# Julia wrapper for header: /opt/local/include/gdalgrid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function GDALGetDataTypeSize(arg1::GDALDataType)
    ccall((:GDALGetDataTypeSize,libgdal),Cint,(GDALDataType,),arg1)
end

function GDALDataTypeIsComplex(arg1::GDALDataType)
    ccall((:GDALDataTypeIsComplex,libgdal),Cint,(GDALDataType,),arg1)
end

function GDALGetDataTypeName(arg1::GDALDataType)
    ccall((:GDALGetDataTypeName,libgdal),Ptr{Uint8},(GDALDataType,),arg1)
end

function GDALGetDataTypeByName(arg1::Ptr{Uint8})
    ccall((:GDALGetDataTypeByName,libgdal),GDALDataType,(Ptr{Uint8},),arg1)
end

function GDALDataTypeUnion(arg1::GDALDataType,arg2::GDALDataType)
    ccall((:GDALDataTypeUnion,libgdal),GDALDataType,(GDALDataType,GDALDataType),arg1,arg2)
end

function GDALGetAsyncStatusTypeName(arg1::GDALAsyncStatusType)
    ccall((:GDALGetAsyncStatusTypeName,libgdal),Ptr{Uint8},(GDALAsyncStatusType,),arg1)
end

function GDALGetAsyncStatusTypeByName(arg1::Ptr{Uint8})
    ccall((:GDALGetAsyncStatusTypeByName,libgdal),GDALAsyncStatusType,(Ptr{Uint8},),arg1)
end

function GDALGetColorInterpretationName(arg1::GDALColorInterp)
    ccall((:GDALGetColorInterpretationName,libgdal),Ptr{Uint8},(GDALColorInterp,),arg1)
end

function GDALGetColorInterpretationByName(pszName::Ptr{Uint8})
    ccall((:GDALGetColorInterpretationByName,libgdal),GDALColorInterp,(Ptr{Uint8},),pszName)
end

function GDALGetPaletteInterpretationName(arg1::GDALPaletteInterp)
    ccall((:GDALGetPaletteInterpretationName,libgdal),Ptr{Uint8},(GDALPaletteInterp,),arg1)
end

function GDALAllRegister()
    ccall((:GDALAllRegister,libgdal),Void,())
end

function GDALCreate(hDriver::GDALDriverH,arg1::Ptr{Uint8},arg2::Cint,arg3::Cint,arg4::Cint,arg5::GDALDataType,arg6::Ptr{Ptr{Uint8}})
    ccall((:GDALCreate,libgdal),GDALDatasetH,(GDALDriverH,Ptr{Uint8},Cint,Cint,Cint,GDALDataType,Ptr{Ptr{Uint8}}),hDriver,arg1,arg2,arg3,arg4,arg5,arg6)
end

function GDALCreateCopy(arg1::GDALDriverH,arg2::Ptr{Uint8},arg3::GDALDatasetH,arg4::Cint,arg5::Ptr{Ptr{Uint8}},arg6::GDALProgressFunc,arg7::Ptr{Void})
    ccall((:GDALCreateCopy,libgdal),GDALDatasetH,(GDALDriverH,Ptr{Uint8},GDALDatasetH,Cint,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function GDALIdentifyDriver(pszFilename::Ptr{Uint8},papszFileList::Ptr{Ptr{Uint8}})
    ccall((:GDALIdentifyDriver,libgdal),GDALDriverH,(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszFileList)
end

function GDALOpen(pszFilename::Ptr{Uint8},eAccess::GDALAccess)
    ccall((:GDALOpen,libgdal),GDALDatasetH,(Ptr{Uint8},GDALAccess),pszFilename,eAccess)
end

function GDALOpenShared(arg1::Ptr{Uint8},arg2::GDALAccess)
    ccall((:GDALOpenShared,libgdal),GDALDatasetH,(Ptr{Uint8},GDALAccess),arg1,arg2)
end

function GDALDumpOpenDatasets(arg1::Ptr{FILE})
    ccall((:GDALDumpOpenDatasets,libgdal),Cint,(Ptr{FILE},),arg1)
end

function GDALGetDriverByName(arg1::Ptr{Uint8})
    ccall((:GDALGetDriverByName,libgdal),GDALDriverH,(Ptr{Uint8},),arg1)
end

function GDALGetDriverCount()
    ccall((:GDALGetDriverCount,libgdal),Cint,())
end

function GDALGetDriver(arg1::Cint)
    ccall((:GDALGetDriver,libgdal),GDALDriverH,(Cint,),arg1)
end

function GDALDestroyDriver(arg1::GDALDriverH)
    ccall((:GDALDestroyDriver,libgdal),Void,(GDALDriverH,),arg1)
end

function GDALRegisterDriver(arg1::GDALDriverH)
    ccall((:GDALRegisterDriver,libgdal),Cint,(GDALDriverH,),arg1)
end

function GDALDeregisterDriver(arg1::GDALDriverH)
    ccall((:GDALDeregisterDriver,libgdal),Void,(GDALDriverH,),arg1)
end

function GDALDestroyDriverManager()
    ccall((:GDALDestroyDriverManager,libgdal),Void,())
end

function GDALDeleteDataset(arg1::GDALDriverH,arg2::Ptr{Uint8})
    ccall((:GDALDeleteDataset,libgdal),CPLErr,(GDALDriverH,Ptr{Uint8}),arg1,arg2)
end

function GDALRenameDataset(arg1::GDALDriverH,pszNewName::Ptr{Uint8},pszOldName::Ptr{Uint8})
    ccall((:GDALRenameDataset,libgdal),CPLErr,(GDALDriverH,Ptr{Uint8},Ptr{Uint8}),arg1,pszNewName,pszOldName)
end

function GDALCopyDatasetFiles(arg1::GDALDriverH,pszNewName::Ptr{Uint8},pszOldName::Ptr{Uint8})
    ccall((:GDALCopyDatasetFiles,libgdal),CPLErr,(GDALDriverH,Ptr{Uint8},Ptr{Uint8}),arg1,pszNewName,pszOldName)
end

function GDALValidateCreationOptions(arg1::GDALDriverH,papszCreationOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALValidateCreationOptions,libgdal),Cint,(GDALDriverH,Ptr{Ptr{Uint8}}),arg1,papszCreationOptions)
end

function GDALGetDriverShortName(arg1::GDALDriverH)
    ccall((:GDALGetDriverShortName,libgdal),Ptr{Uint8},(GDALDriverH,),arg1)
end

function GDALGetDriverLongName(arg1::GDALDriverH)
    ccall((:GDALGetDriverLongName,libgdal),Ptr{Uint8},(GDALDriverH,),arg1)
end

function GDALGetDriverHelpTopic(arg1::GDALDriverH)
    ccall((:GDALGetDriverHelpTopic,libgdal),Ptr{Uint8},(GDALDriverH,),arg1)
end

function GDALGetDriverCreationOptionList(arg1::GDALDriverH)
    ccall((:GDALGetDriverCreationOptionList,libgdal),Ptr{Uint8},(GDALDriverH,),arg1)
end

function GDALInitGCPs(arg1::Cint,arg2::Ptr{GDAL_GCP})
    ccall((:GDALInitGCPs,libgdal),Void,(Cint,Ptr{GDAL_GCP}),arg1,arg2)
end

function GDALDeinitGCPs(arg1::Cint,arg2::Ptr{GDAL_GCP})
    ccall((:GDALDeinitGCPs,libgdal),Void,(Cint,Ptr{GDAL_GCP}),arg1,arg2)
end

function GDALDuplicateGCPs(arg1::Cint,arg2::Ptr{GDAL_GCP})
    ccall((:GDALDuplicateGCPs,libgdal),Ptr{GDAL_GCP},(Cint,Ptr{GDAL_GCP}),arg1,arg2)
end

function GDALGCPsToGeoTransform(nGCPCount::Cint,pasGCPs::Ptr{GDAL_GCP},padfGeoTransform::Ptr{Cdouble},bApproxOK::Cint)
    ccall((:GDALGCPsToGeoTransform,libgdal),Cint,(Cint,Ptr{GDAL_GCP},Ptr{Cdouble},Cint),nGCPCount,pasGCPs,padfGeoTransform,bApproxOK)
end

function GDALInvGeoTransform(padfGeoTransformIn::Ptr{Cdouble},padfInvGeoTransformOut::Ptr{Cdouble})
    ccall((:GDALInvGeoTransform,libgdal),Cint,(Ptr{Cdouble},Ptr{Cdouble}),padfGeoTransformIn,padfInvGeoTransformOut)
end

function GDALApplyGeoTransform(arg1::Ptr{Cdouble},arg2::Cdouble,arg3::Cdouble,arg4::Ptr{Cdouble},arg5::Ptr{Cdouble})
    ccall((:GDALApplyGeoTransform,libgdal),Void,(Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Cdouble}),arg1,arg2,arg3,arg4,arg5)
end

function GDALComposeGeoTransforms(padfGeoTransform1::Ptr{Cdouble},padfGeoTransform2::Ptr{Cdouble},padfGeoTransformOut::Ptr{Cdouble})
    ccall((:GDALComposeGeoTransforms,libgdal),Void,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),padfGeoTransform1,padfGeoTransform2,padfGeoTransformOut)
end

function GDALGetMetadataDomainList(hObject::GDALMajorObjectH)
    ccall((:GDALGetMetadataDomainList,libgdal),Ptr{Ptr{Uint8}},(GDALMajorObjectH,),hObject)
end

function GDALGetMetadata(arg1::GDALMajorObjectH,arg2::Ptr{Uint8})
    ccall((:GDALGetMetadata,libgdal),Ptr{Ptr{Uint8}},(GDALMajorObjectH,Ptr{Uint8}),arg1,arg2)
end

function GDALSetMetadata(arg1::GDALMajorObjectH,arg2::Ptr{Ptr{Uint8}},arg3::Ptr{Uint8})
    ccall((:GDALSetMetadata,libgdal),CPLErr,(GDALMajorObjectH,Ptr{Ptr{Uint8}},Ptr{Uint8}),arg1,arg2,arg3)
end

function GDALGetMetadataItem(arg1::GDALMajorObjectH,arg2::Ptr{Uint8},arg3::Ptr{Uint8})
    ccall((:GDALGetMetadataItem,libgdal),Ptr{Uint8},(GDALMajorObjectH,Ptr{Uint8},Ptr{Uint8}),arg1,arg2,arg3)
end

function GDALSetMetadataItem(arg1::GDALMajorObjectH,arg2::Ptr{Uint8},arg3::Ptr{Uint8},arg4::Ptr{Uint8})
    ccall((:GDALSetMetadataItem,libgdal),CPLErr,(GDALMajorObjectH,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}),arg1,arg2,arg3,arg4)
end

function GDALGetDescription(arg1::GDALMajorObjectH)
    ccall((:GDALGetDescription,libgdal),Ptr{Uint8},(GDALMajorObjectH,),arg1)
end

function GDALSetDescription(arg1::GDALMajorObjectH,arg2::Ptr{Uint8})
    ccall((:GDALSetDescription,libgdal),Void,(GDALMajorObjectH,Ptr{Uint8}),arg1,arg2)
end

function GDALGetDatasetDriver(arg1::GDALDatasetH)
    ccall((:GDALGetDatasetDriver,libgdal),GDALDriverH,(GDALDatasetH,),arg1)
end

function GDALGetFileList(arg1::GDALDatasetH)
    ccall((:GDALGetFileList,libgdal),Ptr{Ptr{Uint8}},(GDALDatasetH,),arg1)
end

function GDALClose(arg1::GDALDatasetH)
    ccall((:GDALClose,libgdal),Void,(GDALDatasetH,),arg1)
end

function GDALGetRasterXSize(arg1::GDALDatasetH)
    ccall((:GDALGetRasterXSize,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALGetRasterYSize(arg1::GDALDatasetH)
    ccall((:GDALGetRasterYSize,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALGetRasterCount(arg1::GDALDatasetH)
    ccall((:GDALGetRasterCount,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALGetRasterBand(arg1::GDALDatasetH,arg2::Cint)
    ccall((:GDALGetRasterBand,libgdal),GDALRasterBandH,(GDALDatasetH,Cint),arg1,arg2)
end

function GDALAddBand(hDS::GDALDatasetH,eType::GDALDataType,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALAddBand,libgdal),CPLErr,(GDALDatasetH,GDALDataType,Ptr{Ptr{Uint8}}),hDS,eType,papszOptions)
end

function GDALBeginAsyncReader(hDS::GDALDatasetH,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint,pBuf::Ptr{Void},nBufXSize::Cint,nBufYSize::Cint,eBufType::GDALDataType,nBandCount::Cint,panBandMap::Ptr{Cint},nPixelSpace::Cint,nLineSpace::Cint,nBandSpace::Cint,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALBeginAsyncReader,libgdal),GDALAsyncReaderH,(GDALDatasetH,Cint,Cint,Cint,Cint,Ptr{Void},Cint,Cint,GDALDataType,Cint,Ptr{Cint},Cint,Cint,Cint,Ptr{Ptr{Uint8}}),hDS,nXOff,nYOff,nXSize,nYSize,pBuf,nBufXSize,nBufYSize,eBufType,nBandCount,panBandMap,nPixelSpace,nLineSpace,nBandSpace,papszOptions)
end

function GDALEndAsyncReader(hDS::GDALDatasetH,hAsynchReaderH::GDALAsyncReaderH)
    ccall((:GDALEndAsyncReader,libgdal),Void,(GDALDatasetH,GDALAsyncReaderH),hDS,hAsynchReaderH)
end

function GDALDatasetRasterIO(hDS::GDALDatasetH,eRWFlag::GDALRWFlag,nDSXOff::Cint,nDSYOff::Cint,nDSXSize::Cint,nDSYSize::Cint,pBuffer::Ptr{Void},nBXSize::Cint,nBYSize::Cint,eBDataType::GDALDataType,nBandCount::Cint,panBandCount::Ptr{Cint},nPixelSpace::Cint,nLineSpace::Cint,nBandSpace::Cint)
    ccall((:GDALDatasetRasterIO,libgdal),CPLErr,(GDALDatasetH,GDALRWFlag,Cint,Cint,Cint,Cint,Ptr{Void},Cint,Cint,GDALDataType,Cint,Ptr{Cint},Cint,Cint,Cint),hDS,eRWFlag,nDSXOff,nDSYOff,nDSXSize,nDSYSize,pBuffer,nBXSize,nBYSize,eBDataType,nBandCount,panBandCount,nPixelSpace,nLineSpace,nBandSpace)
end

function GDALDatasetAdviseRead(hDS::GDALDatasetH,nDSXOff::Cint,nDSYOff::Cint,nDSXSize::Cint,nDSYSize::Cint,nBXSize::Cint,nBYSize::Cint,eBDataType::GDALDataType,nBandCount::Cint,panBandCount::Ptr{Cint},papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALDatasetAdviseRead,libgdal),CPLErr,(GDALDatasetH,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Cint,Ptr{Cint},Ptr{Ptr{Uint8}}),hDS,nDSXOff,nDSYOff,nDSXSize,nDSYSize,nBXSize,nBYSize,eBDataType,nBandCount,panBandCount,papszOptions)
end

function GDALGetProjectionRef(arg1::GDALDatasetH)
    ccall((:GDALGetProjectionRef,libgdal),Ptr{Uint8},(GDALDatasetH,),arg1)
end

function GDALSetProjection(arg1::GDALDatasetH,arg2::Ptr{Uint8})
    ccall((:GDALSetProjection,libgdal),CPLErr,(GDALDatasetH,Ptr{Uint8}),arg1,arg2)
end

function GDALGetGeoTransform(arg1::GDALDatasetH,arg2::Ptr{Cdouble})
    ccall((:GDALGetGeoTransform,libgdal),CPLErr,(GDALDatasetH,Ptr{Cdouble}),arg1,arg2)
end

function GDALSetGeoTransform(arg1::GDALDatasetH,arg2::Ptr{Cdouble})
    ccall((:GDALSetGeoTransform,libgdal),CPLErr,(GDALDatasetH,Ptr{Cdouble}),arg1,arg2)
end

function GDALGetGCPCount(arg1::GDALDatasetH)
    ccall((:GDALGetGCPCount,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALGetGCPProjection(arg1::GDALDatasetH)
    ccall((:GDALGetGCPProjection,libgdal),Ptr{Uint8},(GDALDatasetH,),arg1)
end

function GDALGetGCPs(arg1::GDALDatasetH)
    ccall((:GDALGetGCPs,libgdal),Ptr{GDAL_GCP},(GDALDatasetH,),arg1)
end

function GDALSetGCPs(arg1::GDALDatasetH,arg2::Cint,arg3::Ptr{GDAL_GCP},arg4::Ptr{Uint8})
    ccall((:GDALSetGCPs,libgdal),CPLErr,(GDALDatasetH,Cint,Ptr{GDAL_GCP},Ptr{Uint8}),arg1,arg2,arg3,arg4)
end

function GDALGetInternalHandle(arg1::GDALDatasetH,arg2::Ptr{Uint8})
    ccall((:GDALGetInternalHandle,libgdal),Ptr{Void},(GDALDatasetH,Ptr{Uint8}),arg1,arg2)
end

function GDALReferenceDataset(arg1::GDALDatasetH)
    ccall((:GDALReferenceDataset,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALDereferenceDataset(arg1::GDALDatasetH)
    ccall((:GDALDereferenceDataset,libgdal),Cint,(GDALDatasetH,),arg1)
end

function GDALBuildOverviews(arg1::GDALDatasetH,arg2::Ptr{Uint8},arg3::Cint,arg4::Ptr{Cint},arg5::Cint,arg6::Ptr{Cint},arg7::GDALProgressFunc,arg8::Ptr{Void})
    ccall((:GDALBuildOverviews,libgdal),CPLErr,(GDALDatasetH,Ptr{Uint8},Cint,Ptr{Cint},Cint,Ptr{Cint},GDALProgressFunc,Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8)
end

function GDALGetOpenDatasets(hDS::Ptr{Ptr{GDALDatasetH}},pnCount::Ptr{Cint})
    ccall((:GDALGetOpenDatasets,libgdal),Void,(Ptr{Ptr{GDALDatasetH}},Ptr{Cint}),hDS,pnCount)
end

function GDALGetAccess(hDS::GDALDatasetH)
    ccall((:GDALGetAccess,libgdal),Cint,(GDALDatasetH,),hDS)
end

function GDALFlushCache(hDS::GDALDatasetH)
    ccall((:GDALFlushCache,libgdal),Void,(GDALDatasetH,),hDS)
end

function GDALCreateDatasetMaskBand(hDS::GDALDatasetH,nFlags::Cint)
    ccall((:GDALCreateDatasetMaskBand,libgdal),CPLErr,(GDALDatasetH,Cint),hDS,nFlags)
end

function GDALDatasetCopyWholeRaster(hSrcDS::GDALDatasetH,hDstDS::GDALDatasetH,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALDatasetCopyWholeRaster,libgdal),CPLErr,(GDALDatasetH,GDALDatasetH,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcDS,hDstDS,papszOptions,pfnProgress,pProgressData)
end

function GDALRasterBandCopyWholeRaster(hSrcBand::GDALRasterBandH,hDstBand::GDALRasterBandH,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALRasterBandCopyWholeRaster,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcBand,hDstBand,papszOptions,pfnProgress,pProgressData)
end

function GDALRegenerateOverviews(hSrcBand::GDALRasterBandH,nOverviewCount::Cint,pahOverviewBands::Ptr{GDALRasterBandH},pszResampling::Ptr{Uint8},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALRegenerateOverviews,libgdal),CPLErr,(GDALRasterBandH,Cint,Ptr{GDALRasterBandH},Ptr{Uint8},GDALProgressFunc,Ptr{Void}),hSrcBand,nOverviewCount,pahOverviewBands,pszResampling,pfnProgress,pProgressData)
end

function GDALGetRasterDataType(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterDataType,libgdal),GDALDataType,(GDALRasterBandH,),arg1)
end

function GDALGetBlockSize(arg1::GDALRasterBandH,pnXSize::Ptr{Cint},pnYSize::Ptr{Cint})
    ccall((:GDALGetBlockSize,libgdal),Void,(GDALRasterBandH,Ptr{Cint},Ptr{Cint}),arg1,pnXSize,pnYSize)
end

function GDALRasterAdviseRead(hRB::GDALRasterBandH,nDSXOff::Cint,nDSYOff::Cint,nDSXSize::Cint,nDSYSize::Cint,nBXSize::Cint,nBYSize::Cint,eBDataType::GDALDataType,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALRasterAdviseRead,libgdal),CPLErr,(GDALRasterBandH,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Ptr{Ptr{Uint8}}),hRB,nDSXOff,nDSYOff,nDSXSize,nDSYSize,nBXSize,nBYSize,eBDataType,papszOptions)
end

function GDALRasterIO(hRBand::GDALRasterBandH,eRWFlag::GDALRWFlag,nDSXOff::Cint,nDSYOff::Cint,nDSXSize::Cint,nDSYSize::Cint,pBuffer::Ptr{Void},nBXSize::Cint,nBYSize::Cint,eBDataType::GDALDataType,nPixelSpace::Cint,nLineSpace::Cint)
    ccall((:GDALRasterIO,libgdal),CPLErr,(GDALRasterBandH,GDALRWFlag,Cint,Cint,Cint,Cint,Ptr{Void},Cint,Cint,GDALDataType,Cint,Cint),hRBand,eRWFlag,nDSXOff,nDSYOff,nDSXSize,nDSYSize,pBuffer,nBXSize,nBYSize,eBDataType,nPixelSpace,nLineSpace)
end

function GDALReadBlock(arg1::GDALRasterBandH,arg2::Cint,arg3::Cint,arg4::Ptr{Void})
    ccall((:GDALReadBlock,libgdal),CPLErr,(GDALRasterBandH,Cint,Cint,Ptr{Void}),arg1,arg2,arg3,arg4)
end

function GDALWriteBlock(arg1::GDALRasterBandH,arg2::Cint,arg3::Cint,arg4::Ptr{Void})
    ccall((:GDALWriteBlock,libgdal),CPLErr,(GDALRasterBandH,Cint,Cint,Ptr{Void}),arg1,arg2,arg3,arg4)
end

function GDALGetRasterBandXSize(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterBandXSize,libgdal),Cint,(GDALRasterBandH,),arg1)
end

function GDALGetRasterBandYSize(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterBandYSize,libgdal),Cint,(GDALRasterBandH,),arg1)
end

function GDALGetRasterAccess(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterAccess,libgdal),GDALAccess,(GDALRasterBandH,),arg1)
end

function GDALGetBandNumber(arg1::GDALRasterBandH)
    ccall((:GDALGetBandNumber,libgdal),Cint,(GDALRasterBandH,),arg1)
end

function GDALGetBandDataset(arg1::GDALRasterBandH)
    ccall((:GDALGetBandDataset,libgdal),GDALDatasetH,(GDALRasterBandH,),arg1)
end

function GDALGetRasterColorInterpretation(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterColorInterpretation,libgdal),GDALColorInterp,(GDALRasterBandH,),arg1)
end

function GDALSetRasterColorInterpretation(arg1::GDALRasterBandH,arg2::GDALColorInterp)
    ccall((:GDALSetRasterColorInterpretation,libgdal),CPLErr,(GDALRasterBandH,GDALColorInterp),arg1,arg2)
end

function GDALGetRasterColorTable(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterColorTable,libgdal),GDALColorTableH,(GDALRasterBandH,),arg1)
end

function GDALSetRasterColorTable(arg1::GDALRasterBandH,arg2::GDALColorTableH)
    ccall((:GDALSetRasterColorTable,libgdal),CPLErr,(GDALRasterBandH,GDALColorTableH),arg1,arg2)
end

function GDALHasArbitraryOverviews(arg1::GDALRasterBandH)
    ccall((:GDALHasArbitraryOverviews,libgdal),Cint,(GDALRasterBandH,),arg1)
end

function GDALGetOverviewCount(arg1::GDALRasterBandH)
    ccall((:GDALGetOverviewCount,libgdal),Cint,(GDALRasterBandH,),arg1)
end

function GDALGetOverview(arg1::GDALRasterBandH,arg2::Cint)
    ccall((:GDALGetOverview,libgdal),GDALRasterBandH,(GDALRasterBandH,Cint),arg1,arg2)
end

function GDALGetRasterNoDataValue(arg1::GDALRasterBandH,arg2::Ptr{Cint})
    ccall((:GDALGetRasterNoDataValue,libgdal),Cdouble,(GDALRasterBandH,Ptr{Cint}),arg1,arg2)
end

function GDALSetRasterNoDataValue(arg1::GDALRasterBandH,arg2::Cdouble)
    ccall((:GDALSetRasterNoDataValue,libgdal),CPLErr,(GDALRasterBandH,Cdouble),arg1,arg2)
end

function GDALGetRasterCategoryNames(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterCategoryNames,libgdal),Ptr{Ptr{Uint8}},(GDALRasterBandH,),arg1)
end

function GDALSetRasterCategoryNames(arg1::GDALRasterBandH,arg2::Ptr{Ptr{Uint8}})
    ccall((:GDALSetRasterCategoryNames,libgdal),CPLErr,(GDALRasterBandH,Ptr{Ptr{Uint8}}),arg1,arg2)
end

function GDALGetRasterMinimum(arg1::GDALRasterBandH,pbSuccess::Ptr{Cint})
    ccall((:GDALGetRasterMinimum,libgdal),Cdouble,(GDALRasterBandH,Ptr{Cint}),arg1,pbSuccess)
end

function GDALGetRasterMaximum(arg1::GDALRasterBandH,pbSuccess::Ptr{Cint})
    ccall((:GDALGetRasterMaximum,libgdal),Cdouble,(GDALRasterBandH,Ptr{Cint}),arg1,pbSuccess)
end

function GDALGetRasterStatistics(arg1::GDALRasterBandH,bApproxOK::Cint,bForce::Cint,pdfMin::Ptr{Cdouble},pdfMax::Ptr{Cdouble},pdfMean::Ptr{Cdouble},pdfStdDev::Ptr{Cdouble})
    ccall((:GDALGetRasterStatistics,libgdal),CPLErr,(GDALRasterBandH,Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),arg1,bApproxOK,bForce,pdfMin,pdfMax,pdfMean,pdfStdDev)
end

function GDALComputeRasterStatistics(arg1::GDALRasterBandH,bApproxOK::Cint,pdfMin::Ptr{Cdouble},pdfMax::Ptr{Cdouble},pdfMean::Ptr{Cdouble},pdfStdDev::Ptr{Cdouble},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALComputeRasterStatistics,libgdal),CPLErr,(GDALRasterBandH,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},GDALProgressFunc,Ptr{Void}),arg1,bApproxOK,pdfMin,pdfMax,pdfMean,pdfStdDev,pfnProgress,pProgressData)
end

function GDALSetRasterStatistics(hBand::GDALRasterBandH,dfMin::Cdouble,dfMax::Cdouble,dfMean::Cdouble,dfStdDev::Cdouble)
    ccall((:GDALSetRasterStatistics,libgdal),CPLErr,(GDALRasterBandH,Cdouble,Cdouble,Cdouble,Cdouble),hBand,dfMin,dfMax,dfMean,dfStdDev)
end

function GDALGetRasterUnitType(arg1::GDALRasterBandH)
    ccall((:GDALGetRasterUnitType,libgdal),Ptr{Uint8},(GDALRasterBandH,),arg1)
end

function GDALSetRasterUnitType(hBand::GDALRasterBandH,pszNewValue::Ptr{Uint8})
    ccall((:GDALSetRasterUnitType,libgdal),CPLErr,(GDALRasterBandH,Ptr{Uint8}),hBand,pszNewValue)
end

function GDALGetRasterOffset(arg1::GDALRasterBandH,pbSuccess::Ptr{Cint})
    ccall((:GDALGetRasterOffset,libgdal),Cdouble,(GDALRasterBandH,Ptr{Cint}),arg1,pbSuccess)
end

function GDALSetRasterOffset(hBand::GDALRasterBandH,dfNewOffset::Cdouble)
    ccall((:GDALSetRasterOffset,libgdal),CPLErr,(GDALRasterBandH,Cdouble),hBand,dfNewOffset)
end

function GDALGetRasterScale(arg1::GDALRasterBandH,pbSuccess::Ptr{Cint})
    ccall((:GDALGetRasterScale,libgdal),Cdouble,(GDALRasterBandH,Ptr{Cint}),arg1,pbSuccess)
end

function GDALSetRasterScale(hBand::GDALRasterBandH,dfNewOffset::Cdouble)
    ccall((:GDALSetRasterScale,libgdal),CPLErr,(GDALRasterBandH,Cdouble),hBand,dfNewOffset)
end

function GDALComputeRasterMinMax(hBand::GDALRasterBandH,bApproxOK::Cint,adfMinMax::Ptr{Cdouble})
    ccall((:GDALComputeRasterMinMax,libgdal),Void,(GDALRasterBandH,Cint,Ptr{Cdouble}),hBand,bApproxOK,adfMinMax)
end

function GDALFlushRasterCache(hBand::GDALRasterBandH)
    ccall((:GDALFlushRasterCache,libgdal),CPLErr,(GDALRasterBandH,),hBand)
end

function GDALGetRasterHistogram(hBand::GDALRasterBandH,dfMin::Cdouble,dfMax::Cdouble,nBuckets::Cint,panHistogram::Ptr{Cint},bIncludeOutOfRange::Cint,bApproxOK::Cint,pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALGetRasterHistogram,libgdal),CPLErr,(GDALRasterBandH,Cdouble,Cdouble,Cint,Ptr{Cint},Cint,Cint,GDALProgressFunc,Ptr{Void}),hBand,dfMin,dfMax,nBuckets,panHistogram,bIncludeOutOfRange,bApproxOK,pfnProgress,pProgressData)
end

function GDALGetDefaultHistogram(hBand::GDALRasterBandH,pdfMin::Ptr{Cdouble},pdfMax::Ptr{Cdouble},pnBuckets::Ptr{Cint},ppanHistogram::Ptr{Ptr{Cint}},bForce::Cint,pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALGetDefaultHistogram,libgdal),CPLErr,(GDALRasterBandH,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint},Ptr{Ptr{Cint}},Cint,GDALProgressFunc,Ptr{Void}),hBand,pdfMin,pdfMax,pnBuckets,ppanHistogram,bForce,pfnProgress,pProgressData)
end

function GDALSetDefaultHistogram(hBand::GDALRasterBandH,dfMin::Cdouble,dfMax::Cdouble,nBuckets::Cint,panHistogram::Ptr{Cint})
    ccall((:GDALSetDefaultHistogram,libgdal),CPLErr,(GDALRasterBandH,Cdouble,Cdouble,Cint,Ptr{Cint}),hBand,dfMin,dfMax,nBuckets,panHistogram)
end

function GDALGetRandomRasterSample(arg1::GDALRasterBandH,arg2::Cint,arg3::Ptr{Cfloat})
    ccall((:GDALGetRandomRasterSample,libgdal),Cint,(GDALRasterBandH,Cint,Ptr{Cfloat}),arg1,arg2,arg3)
end

function GDALGetRasterSampleOverview(arg1::GDALRasterBandH,arg2::Cint)
    ccall((:GDALGetRasterSampleOverview,libgdal),GDALRasterBandH,(GDALRasterBandH,Cint),arg1,arg2)
end

function GDALFillRaster(hBand::GDALRasterBandH,dfRealValue::Cdouble,dfImaginaryValue::Cdouble)
    ccall((:GDALFillRaster,libgdal),CPLErr,(GDALRasterBandH,Cdouble,Cdouble),hBand,dfRealValue,dfImaginaryValue)
end

function GDALComputeBandStats(hBand::GDALRasterBandH,nSampleStep::Cint,pdfMean::Ptr{Cdouble},pdfStdDev::Ptr{Cdouble},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALComputeBandStats,libgdal),CPLErr,(GDALRasterBandH,Cint,Ptr{Cdouble},Ptr{Cdouble},GDALProgressFunc,Ptr{Void}),hBand,nSampleStep,pdfMean,pdfStdDev,pfnProgress,pProgressData)
end

function GDALOverviewMagnitudeCorrection(hBaseBand::GDALRasterBandH,nOverviewCount::Cint,pahOverviews::Ptr{GDALRasterBandH},pfnProgress::GDALProgressFunc,pProgressData::Ptr{Void})
    ccall((:GDALOverviewMagnitudeCorrection,libgdal),CPLErr,(GDALRasterBandH,Cint,Ptr{GDALRasterBandH},GDALProgressFunc,Ptr{Void}),hBaseBand,nOverviewCount,pahOverviews,pfnProgress,pProgressData)
end

function GDALGetDefaultRAT(hBand::GDALRasterBandH)
    ccall((:GDALGetDefaultRAT,libgdal),GDALRasterAttributeTableH,(GDALRasterBandH,),hBand)
end

function GDALSetDefaultRAT(arg1::GDALRasterBandH,arg2::GDALRasterAttributeTableH)
    ccall((:GDALSetDefaultRAT,libgdal),CPLErr,(GDALRasterBandH,GDALRasterAttributeTableH),arg1,arg2)
end

function GDALAddDerivedBandPixelFunc(pszName::Ptr{Uint8},pfnPixelFunc::GDALDerivedPixelFunc)
    ccall((:GDALAddDerivedBandPixelFunc,libgdal),CPLErr,(Ptr{Uint8},GDALDerivedPixelFunc),pszName,pfnPixelFunc)
end

function GDALGetMaskBand(hBand::GDALRasterBandH)
    ccall((:GDALGetMaskBand,libgdal),GDALRasterBandH,(GDALRasterBandH,),hBand)
end

function GDALGetMaskFlags(hBand::GDALRasterBandH)
    ccall((:GDALGetMaskFlags,libgdal),Cint,(GDALRasterBandH,),hBand)
end

function GDALCreateMaskBand(hBand::GDALRasterBandH,nFlags::Cint)
    ccall((:GDALCreateMaskBand,libgdal),CPLErr,(GDALRasterBandH,Cint),hBand,nFlags)
end

function GDALARGetNextUpdatedRegion(hARIO::GDALAsyncReaderH,dfTimeout::Cdouble,pnXBufOff::Ptr{Cint},pnYBufOff::Ptr{Cint},pnXBufSize::Ptr{Cint},pnYBufSize::Ptr{Cint})
    ccall((:GDALARGetNextUpdatedRegion,libgdal),GDALAsyncStatusType,(GDALAsyncReaderH,Cdouble,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),hARIO,dfTimeout,pnXBufOff,pnYBufOff,pnXBufSize,pnYBufSize)
end

function GDALARLockBuffer(hARIO::GDALAsyncReaderH,dfTimeout::Cdouble)
    ccall((:GDALARLockBuffer,libgdal),Cint,(GDALAsyncReaderH,Cdouble),hARIO,dfTimeout)
end

function GDALARUnlockBuffer(hARIO::GDALAsyncReaderH)
    ccall((:GDALARUnlockBuffer,libgdal),Void,(GDALAsyncReaderH,),hARIO)
end

function GDALGeneralCmdLineProcessor(nArgc::Cint,ppapszArgv::Ptr{Ptr{Ptr{Uint8}}},nOptions::Cint)
    ccall((:GDALGeneralCmdLineProcessor,libgdal),Cint,(Cint,Ptr{Ptr{Ptr{Uint8}}},Cint),nArgc,ppapszArgv,nOptions)
end

function GDALSwapWords(pData::Ptr{Void},nWordSize::Cint,nWordCount::Cint,nWordSkip::Cint)
    ccall((:GDALSwapWords,libgdal),Void,(Ptr{Void},Cint,Cint,Cint),pData,nWordSize,nWordCount,nWordSkip)
end

function GDALCopyWords(pSrcData::Ptr{Void},eSrcType::GDALDataType,nSrcPixelOffset::Cint,pDstData::Ptr{Void},eDstType::GDALDataType,nDstPixelOffset::Cint,nWordCount::Cint)
    ccall((:GDALCopyWords,libgdal),Void,(Ptr{Void},GDALDataType,Cint,Ptr{Void},GDALDataType,Cint,Cint),pSrcData,eSrcType,nSrcPixelOffset,pDstData,eDstType,nDstPixelOffset,nWordCount)
end

function GDALCopyBits(pabySrcData::Ptr{GByte},nSrcOffset::Cint,nSrcStep::Cint,pabyDstData::Ptr{GByte},nDstOffset::Cint,nDstStep::Cint,nBitCount::Cint,nStepCount::Cint)
    ccall((:GDALCopyBits,libgdal),Void,(Ptr{GByte},Cint,Cint,Ptr{GByte},Cint,Cint,Cint,Cint),pabySrcData,nSrcOffset,nSrcStep,pabyDstData,nDstOffset,nDstStep,nBitCount,nStepCount)
end

function GDALLoadWorldFile(arg1::Ptr{Uint8},arg2::Ptr{Cdouble})
    ccall((:GDALLoadWorldFile,libgdal),Cint,(Ptr{Uint8},Ptr{Cdouble}),arg1,arg2)
end

function GDALReadWorldFile(arg1::Ptr{Uint8},arg2::Ptr{Uint8},arg3::Ptr{Cdouble})
    ccall((:GDALReadWorldFile,libgdal),Cint,(Ptr{Uint8},Ptr{Uint8},Ptr{Cdouble}),arg1,arg2,arg3)
end

function GDALWriteWorldFile(arg1::Ptr{Uint8},arg2::Ptr{Uint8},arg3::Ptr{Cdouble})
    ccall((:GDALWriteWorldFile,libgdal),Cint,(Ptr{Uint8},Ptr{Uint8},Ptr{Cdouble}),arg1,arg2,arg3)
end

function GDALLoadTabFile(arg1::Ptr{Uint8},arg2::Ptr{Cdouble},arg3::Ptr{Ptr{Uint8}},arg4::Ptr{Cint},arg5::Ptr{Ptr{GDAL_GCP}})
    ccall((:GDALLoadTabFile,libgdal),Cint,(Ptr{Uint8},Ptr{Cdouble},Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Ptr{GDAL_GCP}}),arg1,arg2,arg3,arg4,arg5)
end

function GDALReadTabFile(arg1::Ptr{Uint8},arg2::Ptr{Cdouble},arg3::Ptr{Ptr{Uint8}},arg4::Ptr{Cint},arg5::Ptr{Ptr{GDAL_GCP}})
    ccall((:GDALReadTabFile,libgdal),Cint,(Ptr{Uint8},Ptr{Cdouble},Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Ptr{GDAL_GCP}}),arg1,arg2,arg3,arg4,arg5)
end

function GDALLoadOziMapFile(arg1::Ptr{Uint8},arg2::Ptr{Cdouble},arg3::Ptr{Ptr{Uint8}},arg4::Ptr{Cint},arg5::Ptr{Ptr{GDAL_GCP}})
    ccall((:GDALLoadOziMapFile,libgdal),Cint,(Ptr{Uint8},Ptr{Cdouble},Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Ptr{GDAL_GCP}}),arg1,arg2,arg3,arg4,arg5)
end

function GDALReadOziMapFile(arg1::Ptr{Uint8},arg2::Ptr{Cdouble},arg3::Ptr{Ptr{Uint8}},arg4::Ptr{Cint},arg5::Ptr{Ptr{GDAL_GCP}})
    ccall((:GDALReadOziMapFile,libgdal),Cint,(Ptr{Uint8},Ptr{Cdouble},Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Ptr{GDAL_GCP}}),arg1,arg2,arg3,arg4,arg5)
end

function GDALLoadRPBFile(pszFilename::Ptr{Uint8},papszSiblingFiles::Ptr{Ptr{Uint8}})
    ccall((:GDALLoadRPBFile,libgdal),Ptr{Ptr{Uint8}},(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszSiblingFiles)
end

function GDALLoadRPCFile(pszFilename::Ptr{Uint8},papszSiblingFiles::Ptr{Ptr{Uint8}})
    ccall((:GDALLoadRPCFile,libgdal),Ptr{Ptr{Uint8}},(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszSiblingFiles)
end

function GDALWriteRPBFile(pszFilename::Ptr{Uint8},papszMD::Ptr{Ptr{Uint8}})
    ccall((:GDALWriteRPBFile,libgdal),CPLErr,(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszMD)
end

function GDALLoadIMDFile(pszFilename::Ptr{Uint8},papszSiblingFiles::Ptr{Ptr{Uint8}})
    ccall((:GDALLoadIMDFile,libgdal),Ptr{Ptr{Uint8}},(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszSiblingFiles)
end

function GDALWriteIMDFile(pszFilename::Ptr{Uint8},papszMD::Ptr{Ptr{Uint8}})
    ccall((:GDALWriteIMDFile,libgdal),CPLErr,(Ptr{Uint8},Ptr{Ptr{Uint8}}),pszFilename,papszMD)
end

function GDALDecToDMS(arg1::Cdouble,arg2::Ptr{Uint8},arg3::Cint)
    ccall((:GDALDecToDMS,libgdal),Ptr{Uint8},(Cdouble,Ptr{Uint8},Cint),arg1,arg2,arg3)
end

function GDALPackedDMSToDec(arg1::Cdouble)
    ccall((:GDALPackedDMSToDec,libgdal),Cdouble,(Cdouble,),arg1)
end

function GDALDecToPackedDMS(arg1::Cdouble)
    ccall((:GDALDecToPackedDMS,libgdal),Cdouble,(Cdouble,),arg1)
end

function GDALVersionInfo(arg1::Ptr{Uint8})
    ccall((:GDALVersionInfo,libgdal),Ptr{Uint8},(Ptr{Uint8},),arg1)
end

function GDALCheckVersion(nVersionMajor::Cint,nVersionMinor::Cint,pszCallingComponentName::Ptr{Uint8})
    ccall((:GDALCheckVersion,libgdal),Cint,(Cint,Cint,Ptr{Uint8}),nVersionMajor,nVersionMinor,pszCallingComponentName)
end

function GDALExtractRPCInfo(arg1::Ptr{Ptr{Uint8}},arg2::Ptr{GDALRPCInfo})
    ccall((:GDALExtractRPCInfo,libgdal),Cint,(Ptr{Ptr{Uint8}},Ptr{GDALRPCInfo}),arg1,arg2)
end

function GDALCreateColorTable(arg1::GDALPaletteInterp)
    ccall((:GDALCreateColorTable,libgdal),GDALColorTableH,(GDALPaletteInterp,),arg1)
end

function GDALDestroyColorTable(arg1::GDALColorTableH)
    ccall((:GDALDestroyColorTable,libgdal),Void,(GDALColorTableH,),arg1)
end

function GDALCloneColorTable(arg1::GDALColorTableH)
    ccall((:GDALCloneColorTable,libgdal),GDALColorTableH,(GDALColorTableH,),arg1)
end

function GDALGetPaletteInterpretation(arg1::GDALColorTableH)
    ccall((:GDALGetPaletteInterpretation,libgdal),GDALPaletteInterp,(GDALColorTableH,),arg1)
end

function GDALGetColorEntryCount(arg1::GDALColorTableH)
    ccall((:GDALGetColorEntryCount,libgdal),Cint,(GDALColorTableH,),arg1)
end

function GDALGetColorEntry(arg1::GDALColorTableH,arg2::Cint)
    ccall((:GDALGetColorEntry,libgdal),Ptr{GDALColorEntry},(GDALColorTableH,Cint),arg1,arg2)
end

function GDALGetColorEntryAsRGB(arg1::GDALColorTableH,arg2::Cint,arg3::Ptr{GDALColorEntry})
    ccall((:GDALGetColorEntryAsRGB,libgdal),Cint,(GDALColorTableH,Cint,Ptr{GDALColorEntry}),arg1,arg2,arg3)
end

function GDALSetColorEntry(arg1::GDALColorTableH,arg2::Cint,arg3::Ptr{GDALColorEntry})
    ccall((:GDALSetColorEntry,libgdal),Void,(GDALColorTableH,Cint,Ptr{GDALColorEntry}),arg1,arg2,arg3)
end

function GDALCreateColorRamp(hTable::GDALColorTableH,nStartIndex::Cint,psStartColor::Ptr{GDALColorEntry},nEndIndex::Cint,psEndColor::Ptr{GDALColorEntry})
    ccall((:GDALCreateColorRamp,libgdal),Void,(GDALColorTableH,Cint,Ptr{GDALColorEntry},Cint,Ptr{GDALColorEntry}),hTable,nStartIndex,psStartColor,nEndIndex,psEndColor)
end

function GDALCreateRasterAttributeTable()
    ccall((:GDALCreateRasterAttributeTable,libgdal),GDALRasterAttributeTableH,())
end

function GDALDestroyRasterAttributeTable(arg1::GDALRasterAttributeTableH)
    ccall((:GDALDestroyRasterAttributeTable,libgdal),Void,(GDALRasterAttributeTableH,),arg1)
end

function GDALRATGetColumnCount(arg1::GDALRasterAttributeTableH)
    ccall((:GDALRATGetColumnCount,libgdal),Cint,(GDALRasterAttributeTableH,),arg1)
end

function GDALRATGetNameOfCol(arg1::GDALRasterAttributeTableH,arg2::Cint)
    ccall((:GDALRATGetNameOfCol,libgdal),Ptr{Uint8},(GDALRasterAttributeTableH,Cint),arg1,arg2)
end

function GDALRATGetUsageOfCol(arg1::GDALRasterAttributeTableH,arg2::Cint)
    ccall((:GDALRATGetUsageOfCol,libgdal),GDALRATFieldUsage,(GDALRasterAttributeTableH,Cint),arg1,arg2)
end

function GDALRATGetTypeOfCol(arg1::GDALRasterAttributeTableH,arg2::Cint)
    ccall((:GDALRATGetTypeOfCol,libgdal),GDALRATFieldType,(GDALRasterAttributeTableH,Cint),arg1,arg2)
end

function GDALRATGetColOfUsage(arg1::GDALRasterAttributeTableH,arg2::GDALRATFieldUsage)
    ccall((:GDALRATGetColOfUsage,libgdal),Cint,(GDALRasterAttributeTableH,GDALRATFieldUsage),arg1,arg2)
end

function GDALRATGetRowCount(arg1::GDALRasterAttributeTableH)
    ccall((:GDALRATGetRowCount,libgdal),Cint,(GDALRasterAttributeTableH,),arg1)
end

function GDALRATGetValueAsString(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint)
    ccall((:GDALRATGetValueAsString,libgdal),Ptr{Uint8},(GDALRasterAttributeTableH,Cint,Cint),arg1,arg2,arg3)
end

function GDALRATGetValueAsInt(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint)
    ccall((:GDALRATGetValueAsInt,libgdal),Cint,(GDALRasterAttributeTableH,Cint,Cint),arg1,arg2,arg3)
end

function GDALRATGetValueAsDouble(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint)
    ccall((:GDALRATGetValueAsDouble,libgdal),Cdouble,(GDALRasterAttributeTableH,Cint,Cint),arg1,arg2,arg3)
end

function GDALRATSetValueAsString(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint,arg4::Ptr{Uint8})
    ccall((:GDALRATSetValueAsString,libgdal),Void,(GDALRasterAttributeTableH,Cint,Cint,Ptr{Uint8}),arg1,arg2,arg3,arg4)
end

function GDALRATSetValueAsInt(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint,arg4::Cint)
    ccall((:GDALRATSetValueAsInt,libgdal),Void,(GDALRasterAttributeTableH,Cint,Cint,Cint),arg1,arg2,arg3,arg4)
end

function GDALRATSetValueAsDouble(arg1::GDALRasterAttributeTableH,arg2::Cint,arg3::Cint,arg4::Cdouble)
    ccall((:GDALRATSetValueAsDouble,libgdal),Void,(GDALRasterAttributeTableH,Cint,Cint,Cdouble),arg1,arg2,arg3,arg4)
end

function GDALRATChangesAreWrittenToFile(hRAT::GDALRasterAttributeTableH)
    ccall((:GDALRATChangesAreWrittenToFile,libgdal),Cint,(GDALRasterAttributeTableH,),hRAT)
end

function GDALRATValuesIOAsDouble(hRAT::GDALRasterAttributeTableH,eRWFlag::GDALRWFlag,iField::Cint,iStartRow::Cint,iLength::Cint,pdfData::Ptr{Cdouble})
    ccall((:GDALRATValuesIOAsDouble,libgdal),CPLErr,(GDALRasterAttributeTableH,GDALRWFlag,Cint,Cint,Cint,Ptr{Cdouble}),hRAT,eRWFlag,iField,iStartRow,iLength,pdfData)
end

function GDALRATValuesIOAsInteger(hRAT::GDALRasterAttributeTableH,eRWFlag::GDALRWFlag,iField::Cint,iStartRow::Cint,iLength::Cint,pnData::Ptr{Cint})
    ccall((:GDALRATValuesIOAsInteger,libgdal),CPLErr,(GDALRasterAttributeTableH,GDALRWFlag,Cint,Cint,Cint,Ptr{Cint}),hRAT,eRWFlag,iField,iStartRow,iLength,pnData)
end

function GDALRATValuesIOAsString(hRAT::GDALRasterAttributeTableH,eRWFlag::GDALRWFlag,iField::Cint,iStartRow::Cint,iLength::Cint,papszStrList::Ptr{Ptr{Uint8}})
    ccall((:GDALRATValuesIOAsString,libgdal),CPLErr,(GDALRasterAttributeTableH,GDALRWFlag,Cint,Cint,Cint,Ptr{Ptr{Uint8}}),hRAT,eRWFlag,iField,iStartRow,iLength,papszStrList)
end

function GDALRATSetRowCount(arg1::GDALRasterAttributeTableH,arg2::Cint)
    ccall((:GDALRATSetRowCount,libgdal),Void,(GDALRasterAttributeTableH,Cint),arg1,arg2)
end

function GDALRATCreateColumn(arg1::GDALRasterAttributeTableH,arg2::Ptr{Uint8},arg3::GDALRATFieldType,arg4::GDALRATFieldUsage)
    ccall((:GDALRATCreateColumn,libgdal),CPLErr,(GDALRasterAttributeTableH,Ptr{Uint8},GDALRATFieldType,GDALRATFieldUsage),arg1,arg2,arg3,arg4)
end

function GDALRATSetLinearBinning(arg1::GDALRasterAttributeTableH,arg2::Cdouble,arg3::Cdouble)
    ccall((:GDALRATSetLinearBinning,libgdal),CPLErr,(GDALRasterAttributeTableH,Cdouble,Cdouble),arg1,arg2,arg3)
end

function GDALRATGetLinearBinning(arg1::GDALRasterAttributeTableH,arg2::Ptr{Cdouble},arg3::Ptr{Cdouble})
    ccall((:GDALRATGetLinearBinning,libgdal),Cint,(GDALRasterAttributeTableH,Ptr{Cdouble},Ptr{Cdouble}),arg1,arg2,arg3)
end

function GDALRATInitializeFromColorTable(arg1::GDALRasterAttributeTableH,arg2::GDALColorTableH)
    ccall((:GDALRATInitializeFromColorTable,libgdal),CPLErr,(GDALRasterAttributeTableH,GDALColorTableH),arg1,arg2)
end

function GDALRATTranslateToColorTable(arg1::GDALRasterAttributeTableH,nEntryCount::Cint)
    ccall((:GDALRATTranslateToColorTable,libgdal),GDALColorTableH,(GDALRasterAttributeTableH,Cint),arg1,nEntryCount)
end

function GDALRATDumpReadable(arg1::GDALRasterAttributeTableH,arg2::Ptr{FILE})
    ccall((:GDALRATDumpReadable,libgdal),Void,(GDALRasterAttributeTableH,Ptr{FILE}),arg1,arg2)
end

function GDALRATClone(arg1::GDALRasterAttributeTableH)
    ccall((:GDALRATClone,libgdal),GDALRasterAttributeTableH,(GDALRasterAttributeTableH,),arg1)
end

function GDALRATGetRowOfValue(arg1::GDALRasterAttributeTableH,arg2::Cdouble)
    ccall((:GDALRATGetRowOfValue,libgdal),Cint,(GDALRasterAttributeTableH,Cdouble),arg1,arg2)
end

function GDALSetCacheMax(nBytes::Cint)
    ccall((:GDALSetCacheMax,libgdal),Void,(Cint,),nBytes)
end

function GDALGetCacheMax()
    ccall((:GDALGetCacheMax,libgdal),Cint,())
end

function GDALGetCacheUsed()
    ccall((:GDALGetCacheUsed,libgdal),Cint,())
end

function GDALSetCacheMax64(nBytes::GIntBig)
    ccall((:GDALSetCacheMax64,libgdal),Void,(GIntBig,),nBytes)
end

function GDALGetCacheMax64()
    ccall((:GDALGetCacheMax64,libgdal),GIntBig,())
end

function GDALGetCacheUsed64()
    ccall((:GDALGetCacheUsed64,libgdal),GIntBig,())
end

function GDALFlushCacheBlock()
    ccall((:GDALFlushCacheBlock,libgdal),Cint,())
end

function GDALDatasetGetVirtualMem(hDS::GDALDatasetH,eRWFlag::GDALRWFlag,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint,nBufXSize::Cint,nBufYSize::Cint,eBufType::GDALDataType,nBandCount::Cint,panBandMap::Ptr{Cint},nPixelSpace::Cint,nLineSpace::GIntBig,nBandSpace::GIntBig,nCacheSize::Csize_t,nPageSizeHint::Csize_t,bSingleThreadUsage::Cint,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALDatasetGetVirtualMem,libgdal),Ptr{CPLVirtualMem},(GDALDatasetH,GDALRWFlag,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Cint,Ptr{Cint},Cint,GIntBig,GIntBig,Csize_t,Csize_t,Cint,Ptr{Ptr{Uint8}}),hDS,eRWFlag,nXOff,nYOff,nXSize,nYSize,nBufXSize,nBufYSize,eBufType,nBandCount,panBandMap,nPixelSpace,nLineSpace,nBandSpace,nCacheSize,nPageSizeHint,bSingleThreadUsage,papszOptions)
end

function GDALRasterBandGetVirtualMem(hBand::GDALRasterBandH,eRWFlag::GDALRWFlag,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint,nBufXSize::Cint,nBufYSize::Cint,eBufType::GDALDataType,nPixelSpace::Cint,nLineSpace::GIntBig,nCacheSize::Csize_t,nPageSizeHint::Csize_t,bSingleThreadUsage::Cint,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALRasterBandGetVirtualMem,libgdal),Ptr{CPLVirtualMem},(GDALRasterBandH,GDALRWFlag,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Cint,GIntBig,Csize_t,Csize_t,Cint,Ptr{Ptr{Uint8}}),hBand,eRWFlag,nXOff,nYOff,nXSize,nYSize,nBufXSize,nBufYSize,eBufType,nPixelSpace,nLineSpace,nCacheSize,nPageSizeHint,bSingleThreadUsage,papszOptions)
end

function GDALGetVirtualMemAuto(hBand::GDALRasterBandH,eRWFlag::GDALRWFlag,pnPixelSpace::Ptr{Cint},pnLineSpace::Ptr{GIntBig},papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALGetVirtualMemAuto,libgdal),Ptr{CPLVirtualMem},(GDALRasterBandH,GDALRWFlag,Ptr{Cint},Ptr{GIntBig},Ptr{Ptr{Uint8}}),hBand,eRWFlag,pnPixelSpace,pnLineSpace,papszOptions)
end

function GDALDatasetGetTiledVirtualMem(hDS::GDALDatasetH,eRWFlag::GDALRWFlag,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint,nTileXSize::Cint,nTileYSize::Cint,eBufType::GDALDataType,nBandCount::Cint,panBandMap::Ptr{Cint},eTileOrganization::GDALTileOrganization,nCacheSize::Csize_t,bSingleThreadUsage::Cint,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALDatasetGetTiledVirtualMem,libgdal),Ptr{CPLVirtualMem},(GDALDatasetH,GDALRWFlag,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Cint,Ptr{Cint},GDALTileOrganization,Csize_t,Cint,Ptr{Ptr{Uint8}}),hDS,eRWFlag,nXOff,nYOff,nXSize,nYSize,nTileXSize,nTileYSize,eBufType,nBandCount,panBandMap,eTileOrganization,nCacheSize,bSingleThreadUsage,papszOptions)
end

function GDALRasterBandGetTiledVirtualMem(hBand::GDALRasterBandH,eRWFlag::GDALRWFlag,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint,nTileXSize::Cint,nTileYSize::Cint,eBufType::GDALDataType,nCacheSize::Csize_t,bSingleThreadUsage::Cint,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALRasterBandGetTiledVirtualMem,libgdal),Ptr{CPLVirtualMem},(GDALRasterBandH,GDALRWFlag,Cint,Cint,Cint,Cint,Cint,Cint,GDALDataType,Csize_t,Cint,Ptr{Ptr{Uint8}}),hBand,eRWFlag,nXOff,nYOff,nXSize,nYSize,nTileXSize,nTileYSize,eBufType,nCacheSize,bSingleThreadUsage,papszOptions)
end

function GDALComputeMedianCutPCT(hRed::GDALRasterBandH,hGreen::GDALRasterBandH,hBlue::GDALRasterBandH,pfnIncludePixel::Ptr{Void},nColors::Cint,hColorTable::GDALColorTableH,pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALComputeMedianCutPCT,libgdal),Cint,(GDALRasterBandH,GDALRasterBandH,GDALRasterBandH,Ptr{Void},Cint,GDALColorTableH,GDALProgressFunc,Ptr{Void}),hRed,hGreen,hBlue,pfnIncludePixel,nColors,hColorTable,pfnProgress,pProgressArg)
end

function GDALDitherRGB2PCT(hRed::GDALRasterBandH,hGreen::GDALRasterBandH,hBlue::GDALRasterBandH,hTarget::GDALRasterBandH,hColorTable::GDALColorTableH,pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALDitherRGB2PCT,libgdal),Cint,(GDALRasterBandH,GDALRasterBandH,GDALRasterBandH,GDALRasterBandH,GDALColorTableH,GDALProgressFunc,Ptr{Void}),hRed,hGreen,hBlue,hTarget,hColorTable,pfnProgress,pProgressArg)
end

function GDALChecksumImage(hBand::GDALRasterBandH,nXOff::Cint,nYOff::Cint,nXSize::Cint,nYSize::Cint)
    ccall((:GDALChecksumImage,libgdal),Cint,(GDALRasterBandH,Cint,Cint,Cint,Cint),hBand,nXOff,nYOff,nXSize,nYSize)
end

function GDALComputeProximity(hSrcBand::GDALRasterBandH,hProximityBand::GDALRasterBandH,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALComputeProximity,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcBand,hProximityBand,papszOptions,pfnProgress,pProgressArg)
end

function GDALFillNodata(hTargetBand::GDALRasterBandH,hMaskBand::GDALRasterBandH,dfMaxSearchDist::Cdouble,bDeprecatedOption::Cint,nSmoothingIterations::Cint,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALFillNodata,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,Cdouble,Cint,Cint,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hTargetBand,hMaskBand,dfMaxSearchDist,bDeprecatedOption,nSmoothingIterations,papszOptions,pfnProgress,pProgressArg)
end

function GDALPolygonize(hSrcBand::GDALRasterBandH,hMaskBand::GDALRasterBandH,hOutLayer::OGRLayerH,iPixValField::Cint,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALPolygonize,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,OGRLayerH,Cint,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcBand,hMaskBand,hOutLayer,iPixValField,papszOptions,pfnProgress,pProgressArg)
end

function GDALFPolygonize(hSrcBand::GDALRasterBandH,hMaskBand::GDALRasterBandH,hOutLayer::OGRLayerH,iPixValField::Cint,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALFPolygonize,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,OGRLayerH,Cint,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcBand,hMaskBand,hOutLayer,iPixValField,papszOptions,pfnProgress,pProgressArg)
end

function GDALSieveFilter(hSrcBand::GDALRasterBandH,hMaskBand::GDALRasterBandH,hDstBand::GDALRasterBandH,nSizeThreshold::Cint,nConnectedness::Cint,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALSieveFilter,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,GDALRasterBandH,Cint,Cint,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hSrcBand,hMaskBand,hDstBand,nSizeThreshold,nConnectedness,papszOptions,pfnProgress,pProgressArg)
end

function GDALDestroyTransformer(pTransformerArg::Ptr{Void})
    ccall((:GDALDestroyTransformer,libgdal),Void,(Ptr{Void},),pTransformerArg)
end

function GDALUseTransformer(pTranformerArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALUseTransformer,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTranformerArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateGenImgProjTransformer(hSrcDS::GDALDatasetH,pszSrcWKT::Ptr{Uint8},hDstDS::GDALDatasetH,pszDstWKT::Ptr{Uint8},bGCPUseOK::Cint,dfGCPErrorThreshold::Cdouble,nOrder::Cint)
    ccall((:GDALCreateGenImgProjTransformer,libgdal),Ptr{Void},(GDALDatasetH,Ptr{Uint8},GDALDatasetH,Ptr{Uint8},Cint,Cdouble,Cint),hSrcDS,pszSrcWKT,hDstDS,pszDstWKT,bGCPUseOK,dfGCPErrorThreshold,nOrder)
end

function GDALCreateGenImgProjTransformer2(hSrcDS::GDALDatasetH,hDstDS::GDALDatasetH,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALCreateGenImgProjTransformer2,libgdal),Ptr{Void},(GDALDatasetH,GDALDatasetH,Ptr{Ptr{Uint8}}),hSrcDS,hDstDS,papszOptions)
end

function GDALCreateGenImgProjTransformer3(pszSrcWKT::Ptr{Uint8},padfSrcGeoTransform::Ptr{Cdouble},pszDstWKT::Ptr{Uint8},padfDstGeoTransform::Ptr{Cdouble})
    ccall((:GDALCreateGenImgProjTransformer3,libgdal),Ptr{Void},(Ptr{Uint8},Ptr{Cdouble},Ptr{Uint8},Ptr{Cdouble}),pszSrcWKT,padfSrcGeoTransform,pszDstWKT,padfDstGeoTransform)
end

function GDALSetGenImgProjTransformerDstGeoTransform(arg1::Ptr{Void},arg2::Ptr{Cdouble})
    ccall((:GDALSetGenImgProjTransformerDstGeoTransform,libgdal),Void,(Ptr{Void},Ptr{Cdouble}),arg1,arg2)
end

function GDALDestroyGenImgProjTransformer(arg1::Ptr{Void})
    ccall((:GDALDestroyGenImgProjTransformer,libgdal),Void,(Ptr{Void},),arg1)
end

function GDALGenImgProjTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALGenImgProjTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateReprojectionTransformer(pszSrcWKT::Ptr{Uint8},pszDstWKT::Ptr{Uint8})
    ccall((:GDALCreateReprojectionTransformer,libgdal),Ptr{Void},(Ptr{Uint8},Ptr{Uint8}),pszSrcWKT,pszDstWKT)
end

function GDALDestroyReprojectionTransformer(arg1::Ptr{Void})
    ccall((:GDALDestroyReprojectionTransformer,libgdal),Void,(Ptr{Void},),arg1)
end

function GDALReprojectionTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALReprojectionTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateGCPTransformer(nGCPCount::Cint,pasGCPList::Ptr{GDAL_GCP},nReqOrder::Cint,bReversed::Cint)
    ccall((:GDALCreateGCPTransformer,libgdal),Ptr{Void},(Cint,Ptr{GDAL_GCP},Cint,Cint),nGCPCount,pasGCPList,nReqOrder,bReversed)
end

function GDALCreateGCPRefineTransformer(nGCPCount::Cint,pasGCPList::Ptr{GDAL_GCP},nReqOrder::Cint,bReversed::Cint,tolerance::Cdouble,minimumGcps::Cint)
    ccall((:GDALCreateGCPRefineTransformer,libgdal),Ptr{Void},(Cint,Ptr{GDAL_GCP},Cint,Cint,Cdouble,Cint),nGCPCount,pasGCPList,nReqOrder,bReversed,tolerance,minimumGcps)
end

function GDALDestroyGCPTransformer(pTransformArg::Ptr{Void})
    ccall((:GDALDestroyGCPTransformer,libgdal),Void,(Ptr{Void},),pTransformArg)
end

function GDALGCPTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALGCPTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateTPSTransformer(nGCPCount::Cint,pasGCPList::Ptr{GDAL_GCP},bReversed::Cint)
    ccall((:GDALCreateTPSTransformer,libgdal),Ptr{Void},(Cint,Ptr{GDAL_GCP},Cint),nGCPCount,pasGCPList,bReversed)
end

function GDALDestroyTPSTransformer(pTransformArg::Ptr{Void})
    ccall((:GDALDestroyTPSTransformer,libgdal),Void,(Ptr{Void},),pTransformArg)
end

function GDALTPSTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALTPSTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function RPCInfoToMD(psRPCInfo::Ptr{GDALRPCInfo})
    ccall((:RPCInfoToMD,libgdal),Ptr{Ptr{Uint8}},(Ptr{GDALRPCInfo},),psRPCInfo)
end

function GDALCreateRPCTransformer(psRPC::Ptr{GDALRPCInfo},bReversed::Cint,dfPixErrThreshold::Cdouble,papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALCreateRPCTransformer,libgdal),Ptr{Void},(Ptr{GDALRPCInfo},Cint,Cdouble,Ptr{Ptr{Uint8}}),psRPC,bReversed,dfPixErrThreshold,papszOptions)
end

function GDALDestroyRPCTransformer(pTransformArg::Ptr{Void})
    ccall((:GDALDestroyRPCTransformer,libgdal),Void,(Ptr{Void},),pTransformArg)
end

function GDALRPCTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALRPCTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateGeoLocTransformer(hBaseDS::GDALDatasetH,papszGeolocationInfo::Ptr{Ptr{Uint8}},bReversed::Cint)
    ccall((:GDALCreateGeoLocTransformer,libgdal),Ptr{Void},(GDALDatasetH,Ptr{Ptr{Uint8}},Cint),hBaseDS,papszGeolocationInfo,bReversed)
end

function GDALDestroyGeoLocTransformer(pTransformArg::Ptr{Void})
    ccall((:GDALDestroyGeoLocTransformer,libgdal),Void,(Ptr{Void},),pTransformArg)
end

function GDALGeoLocTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALGeoLocTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALCreateApproxTransformer(pfnRawTransformer::GDALTransformerFunc,pRawTransformerArg::Ptr{Void},dfMaxError::Cdouble)
    ccall((:GDALCreateApproxTransformer,libgdal),Ptr{Void},(GDALTransformerFunc,Ptr{Void},Cdouble),pfnRawTransformer,pRawTransformerArg,dfMaxError)
end

function GDALApproxTransformerOwnsSubtransformer(pCBData::Ptr{Void},bOwnFlag::Cint)
    ccall((:GDALApproxTransformerOwnsSubtransformer,libgdal),Void,(Ptr{Void},Cint),pCBData,bOwnFlag)
end

function GDALDestroyApproxTransformer(pApproxArg::Ptr{Void})
    ccall((:GDALDestroyApproxTransformer,libgdal),Void,(Ptr{Void},),pApproxArg)
end

function GDALApproxTransform(pTransformArg::Ptr{Void},bDstToSrc::Cint,nPointCount::Cint,x::Ptr{Cdouble},y::Ptr{Cdouble},z::Ptr{Cdouble},panSuccess::Ptr{Cint})
    ccall((:GDALApproxTransform,libgdal),Cint,(Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cint}),pTransformArg,bDstToSrc,nPointCount,x,y,z,panSuccess)
end

function GDALSimpleImageWarp(hSrcDS::GDALDatasetH,hDstDS::GDALDatasetH,nBandCount::Cint,panBandList::Ptr{Cint},pfnTransform::GDALTransformerFunc,pTransformArg::Ptr{Void},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void},papszWarpOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALSimpleImageWarp,libgdal),Cint,(GDALDatasetH,GDALDatasetH,Cint,Ptr{Cint},GDALTransformerFunc,Ptr{Void},GDALProgressFunc,Ptr{Void},Ptr{Ptr{Uint8}}),hSrcDS,hDstDS,nBandCount,panBandList,pfnTransform,pTransformArg,pfnProgress,pProgressArg,papszWarpOptions)
end

function GDALSuggestedWarpOutput(hSrcDS::GDALDatasetH,pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},padfGeoTransformOut::Ptr{Cdouble},pnPixels::Ptr{Cint},pnLines::Ptr{Cint})
    ccall((:GDALSuggestedWarpOutput,libgdal),CPLErr,(GDALDatasetH,GDALTransformerFunc,Ptr{Void},Ptr{Cdouble},Ptr{Cint},Ptr{Cint}),hSrcDS,pfnTransformer,pTransformArg,padfGeoTransformOut,pnPixels,pnLines)
end

function GDALSuggestedWarpOutput2(hSrcDS::GDALDatasetH,pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},padfGeoTransformOut::Ptr{Cdouble},pnPixels::Ptr{Cint},pnLines::Ptr{Cint},padfExtents::Ptr{Cdouble},nOptions::Cint)
    ccall((:GDALSuggestedWarpOutput2,libgdal),CPLErr,(GDALDatasetH,GDALTransformerFunc,Ptr{Void},Ptr{Cdouble},Ptr{Cint},Ptr{Cint},Ptr{Cdouble},Cint),hSrcDS,pfnTransformer,pTransformArg,padfGeoTransformOut,pnPixels,pnLines,padfExtents,nOptions)
end

function GDALSerializeTransformer(pfnFunc::GDALTransformerFunc,pTransformArg::Ptr{Void})
    ccall((:GDALSerializeTransformer,libgdal),Ptr{CPLXMLNode},(GDALTransformerFunc,Ptr{Void}),pfnFunc,pTransformArg)
end

function GDALDeserializeTransformer(psTree::Ptr{CPLXMLNode},ppfnFunc::Ptr{GDALTransformerFunc},ppTransformArg::Ptr{Ptr{Void}})
    ccall((:GDALDeserializeTransformer,libgdal),CPLErr,(Ptr{CPLXMLNode},Ptr{GDALTransformerFunc},Ptr{Ptr{Void}}),psTree,ppfnFunc,ppTransformArg)
end

function GDALTransformGeolocations(hXBand::GDALRasterBandH,hYBand::GDALRasterBandH,hZBand::GDALRasterBandH,pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void},papszOptions::Ptr{Ptr{Uint8}})
    ccall((:GDALTransformGeolocations,libgdal),CPLErr,(GDALRasterBandH,GDALRasterBandH,GDALRasterBandH,GDALTransformerFunc,Ptr{Void},GDALProgressFunc,Ptr{Void},Ptr{Ptr{Uint8}}),hXBand,hYBand,hZBand,pfnTransformer,pTransformArg,pfnProgress,pProgressArg,papszOptions)
end

function GDAL_CG_Create(nWidth::Cint,nHeight::Cint,bNoDataSet::Cint,dfNoDataValue::Cdouble,dfContourInterval::Cdouble,dfContourBase::Cdouble,pfnWriter::GDALContourWriter,pCBData::Ptr{Void})
    ccall((:GDAL_CG_Create,libgdal),GDALContourGeneratorH,(Cint,Cint,Cint,Cdouble,Cdouble,Cdouble,GDALContourWriter,Ptr{Void}),nWidth,nHeight,bNoDataSet,dfNoDataValue,dfContourInterval,dfContourBase,pfnWriter,pCBData)
end

function GDAL_CG_FeedLine(hCG::GDALContourGeneratorH,padfScanline::Ptr{Cdouble})
    ccall((:GDAL_CG_FeedLine,libgdal),CPLErr,(GDALContourGeneratorH,Ptr{Cdouble}),hCG,padfScanline)
end

function GDAL_CG_Destroy(hCG::GDALContourGeneratorH)
    ccall((:GDAL_CG_Destroy,libgdal),Void,(GDALContourGeneratorH,),hCG)
end

function OGRContourWriter(arg1::Cdouble,arg2::Cint,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},pInfo::Ptr{Void})
    ccall((:OGRContourWriter,libgdal),CPLErr,(Cdouble,Cint,Ptr{Cdouble},Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,pInfo)
end

function GDALContourGenerate(hBand::GDALRasterBandH,dfContourInterval::Cdouble,dfContourBase::Cdouble,nFixedLevelCount::Cint,padfFixedLevels::Ptr{Cdouble},bUseNoData::Cint,dfNoDataValue::Cdouble,hLayer::Ptr{Void},iIDField::Cint,iElevField::Cint,pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALContourGenerate,libgdal),CPLErr,(GDALRasterBandH,Cdouble,Cdouble,Cint,Ptr{Cdouble},Cint,Cdouble,Ptr{Void},Cint,Cint,GDALProgressFunc,Ptr{Void}),hBand,dfContourInterval,dfContourBase,nFixedLevelCount,padfFixedLevels,bUseNoData,dfNoDataValue,hLayer,iIDField,iElevField,pfnProgress,pProgressArg)
end

function GDALRasterizeGeometries(hDS::GDALDatasetH,nBandCount::Cint,panBandList::Ptr{Cint},nGeomCount::Cint,pahGeometries::Ptr{OGRGeometryH},pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},padfGeomBurnValue::Ptr{Cdouble},papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALRasterizeGeometries,libgdal),CPLErr,(GDALDatasetH,Cint,Ptr{Cint},Cint,Ptr{OGRGeometryH},GDALTransformerFunc,Ptr{Void},Ptr{Cdouble},Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hDS,nBandCount,panBandList,nGeomCount,pahGeometries,pfnTransformer,pTransformArg,padfGeomBurnValue,papszOptions,pfnProgress,pProgressArg)
end

function GDALRasterizeLayers(hDS::GDALDatasetH,nBandCount::Cint,panBandList::Ptr{Cint},nLayerCount::Cint,pahLayers::Ptr{OGRLayerH},pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},padfLayerBurnValues::Ptr{Cdouble},papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALRasterizeLayers,libgdal),CPLErr,(GDALDatasetH,Cint,Ptr{Cint},Cint,Ptr{OGRLayerH},GDALTransformerFunc,Ptr{Void},Ptr{Cdouble},Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),hDS,nBandCount,panBandList,nLayerCount,pahLayers,pfnTransformer,pTransformArg,padfLayerBurnValues,papszOptions,pfnProgress,pProgressArg)
end

function GDALRasterizeLayersBuf(pData::Ptr{Void},nBufXSize::Cint,nBufYSize::Cint,eBufType::GDALDataType,nPixelSpace::Cint,nLineSpace::Cint,nLayerCount::Cint,pahLayers::Ptr{OGRLayerH},pszDstProjection::Ptr{Uint8},padfDstGeoTransform::Ptr{Cdouble},pfnTransformer::GDALTransformerFunc,pTransformArg::Ptr{Void},dfBurnValue::Cdouble,papszOptions::Ptr{Ptr{Uint8}},pfnProgress::GDALProgressFunc,pProgressArg::Ptr{Void})
    ccall((:GDALRasterizeLayersBuf,libgdal),CPLErr,(Ptr{Void},Cint,Cint,GDALDataType,Cint,Cint,Cint,Ptr{OGRLayerH},Ptr{Uint8},Ptr{Cdouble},GDALTransformerFunc,Ptr{Void},Cdouble,Ptr{Ptr{Uint8}},GDALProgressFunc,Ptr{Void}),pData,nBufXSize,nBufYSize,eBufType,nPixelSpace,nLineSpace,nLayerCount,pahLayers,pszDstProjection,padfDstGeoTransform,pfnTransformer,pTransformArg,dfBurnValue,papszOptions,pfnProgress,pProgressArg)
end

function GDALGridCreate(arg1::GDALGridAlgorithm,arg2::Ptr{Void},arg3::GUInt32,arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Ptr{Cdouble},arg7::Cdouble,arg8::Cdouble,arg9::Cdouble,arg10::Cdouble,arg11::GUInt32,arg12::GUInt32,arg13::GDALDataType,arg14::Ptr{Void},arg15::GDALProgressFunc,arg16::Ptr{Void})
    ccall((:GDALGridCreate,libgdal),CPLErr,(GDALGridAlgorithm,Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Cdouble,Cdouble,GUInt32,GUInt32,GDALDataType,Ptr{Void},GDALProgressFunc,Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15,arg16)
end

function GDALComputeMatchingPoints(hFirstImage::GDALDatasetH,hSecondImage::GDALDatasetH,papszOptions::Ptr{Ptr{Uint8}},pnGCPCount::Ptr{Cint})
    ccall((:GDALComputeMatchingPoints,libgdal),Ptr{GDAL_GCP},(GDALDatasetH,GDALDatasetH,Ptr{Ptr{Uint8}},Ptr{Cint}),hFirstImage,hSecondImage,papszOptions,pnGCPCount)
end

function GDALGridInverseDistanceToAPower(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridInverseDistanceToAPower,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridInverseDistanceToAPowerNoSearch(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridInverseDistanceToAPowerNoSearch,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridMovingAverage(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridMovingAverage,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridNearestNeighbor(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridNearestNeighbor,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricMinimum(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricMinimum,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricMaximum(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricMaximum,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricRange(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricRange,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricCount(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricCount,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricAverageDistance(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricAverageDistance,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function GDALGridDataMetricAverageDistancePts(arg1::Ptr{Void},arg2::GUInt32,arg3::Ptr{Cdouble},arg4::Ptr{Cdouble},arg5::Ptr{Cdouble},arg6::Cdouble,arg7::Cdouble,arg8::Ptr{Cdouble},arg9::Ptr{Void})
    ccall((:GDALGridDataMetricAverageDistancePts,libgdal),CPLErr,(Ptr{Void},GUInt32,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Ptr{Cdouble},Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function ParseAlgorithmAndOptions(arg1::Ptr{Uint8},arg2::Ptr{GDALGridAlgorithm},arg3::Ptr{Ptr{Void}})
    ccall((:ParseAlgorithmAndOptions,libgdal),CPLErr,(Ptr{Uint8},Ptr{GDALGridAlgorithm},Ptr{Ptr{Void}}),arg1,arg2,arg3)
end
