.class public Lorg/chromium/printing/PrintingControllerImpl;
.super Ljava/lang/Object;
.source "PrintingControllerImpl.java"

# interfaces
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;
.implements Lorg/chromium/printing/PrintingController;


# static fields
.field private static sInstance:Lorg/chromium/printing/PrintingController;


# instance fields
.field private mContextFromScriptInitiation:Lorg/chromium/printing/PrintingContextInterface;

.field private mDpi:I

.field private final mErrorMessage:Ljava/lang/String;

.field private mFileDescriptor:I

.field private mIsBusy:Z

.field private mLastKnownMaxPages:I

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mNeedNewPdf:Z

.field private mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

.field private mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

.field private mPages:[I

.field private mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

.field private mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

.field private mPrintable:Lorg/chromium/printing/Printable;

.field private mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

.field private mPrintingState:I


# direct methods
.method private constructor <init>(Lorg/chromium/printing/PrintDocumentAdapterWrapper;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    .line 91
    iput-boolean v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mNeedNewPdf:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mLastKnownMaxPages:I

    .line 96
    iput-boolean v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    .line 102
    iput-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    .line 104
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    invoke-virtual {v0, p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->setPdfGenerator(Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;)V

    .line 105
    return-void
.end method

.method private static closeFileDescriptor(I)V
    .locals 1

    .prologue
    .line 382
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static convertIntegerArrayToPageRanges([I)[Landroid/print/PageRange;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 395
    if-eqz p0, :cond_1

    .line 396
    array-length v1, p0

    new-array v1, v1, [Landroid/print/PageRange;

    .line 397
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 398
    aget v2, p0, v0

    .line 399
    new-instance v3, Landroid/print/PageRange;

    invoke-direct {v3, v2, v2}, Landroid/print/PageRange;-><init>(II)V

    aput-object v3, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 405
    :goto_1
    return-object v0

    .line 403
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v2, v1, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static create(Lorg/chromium/printing/PrintDocumentAdapterWrapper;Ljava/lang/String;)Lorg/chromium/printing/PrintingController;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 123
    sget-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/chromium/printing/PrintingControllerImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/printing/PrintingControllerImpl;-><init>(Lorg/chromium/printing/PrintDocumentAdapterWrapper;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    .line 126
    :cond_0
    sget-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/printing/PrintingController;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    return-object v0
.end method

.method private static normalizeRanges([Landroid/print/PageRange;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    array-length v4, p0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 415
    invoke-virtual {v5}, Landroid/print/PageRange;->getStart()I

    move-result v0

    :goto_1
    invoke-virtual {v5}, Landroid/print/PageRange;->getEnd()I

    move-result v6

    if-gt v0, v6, :cond_0

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 422
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 423
    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 424
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 426
    :cond_2
    return-object v2
.end method

.method private resetCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    .line 378
    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    .line 379
    return-void
.end method


# virtual methods
.method public getDpi()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mDpi:I

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    return v0
.end method

.method public getPageHeight()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v0

    return v0
.end method

.method public getPageNumbers()[I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    return v0
.end method

.method public hasPrintingFinished()Z
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    return v0
.end method

.method public onFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 341
    iput v4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mLastKnownMaxPages:I

    .line 342
    iput-object v3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    .line 344
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    if-eqz v0, :cond_1

    .line 345
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    invoke-interface {v0, v5}, Lorg/chromium/printing/PrintingContextInterface;->askUserForSettingsReply(Z)V

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    iget v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/chromium/printing/PrintingContextInterface;->updatePrintingContextMap(IZ)V

    .line 357
    iput-object v3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mContextFromScriptInitiation:Lorg/chromium/printing/PrintingContextInterface;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mContextFromScriptInitiation:Lorg/chromium/printing/PrintingContextInterface;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingContextInterface;->showSystemDialogDone()V

    .line 362
    iput-object v3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mContextFromScriptInitiation:Lorg/chromium/printing/PrintingContextInterface;

    .line 365
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    .line 367
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    invoke-static {v0}, Lorg/chromium/printing/PrintingControllerImpl;->closeFileDescriptor(I)V

    .line 368
    iput v4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    .line 370
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    .line 373
    iput-boolean v5, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    .line 374
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 242
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mDpi:I

    .line 243
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 245
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mNeedNewPdf:Z

    .line 247
    iput-object p4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    .line 252
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    if-ne v0, v1, :cond_1

    .line 255
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mLastKnownMaxPages:I

    invoke-virtual {p0, v0}, Lorg/chromium/printing/PrintingControllerImpl;->pageCountEstimationDone(I)V

    .line 265
    :goto_1
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 259
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {v0}, Lorg/chromium/printing/Printable;->print()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iput v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    goto :goto_1

    .line 262
    :cond_2
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p4, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    .line 231
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 300
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p4, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 302
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iput-object p4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    .line 309
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    .line 311
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    iget v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    invoke-interface {v0, v1, v3}, Lorg/chromium/printing/PrintingContextInterface;->updatePrintingContextMap(IZ)V

    .line 315
    array-length v0, p1

    if-ne v0, v2, :cond_2

    aget-object v0, p1, v3

    sget-object v1, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    invoke-virtual {v0, v1}, Landroid/print/PageRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    .line 322
    :goto_1
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    if-nez v0, :cond_4

    .line 324
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {v0}, Lorg/chromium/printing/Printable;->print()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {p1}, Lorg/chromium/printing/PrintingControllerImpl;->normalizeRanges([Landroid/print/PageRange;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    goto :goto_1

    .line 327
    :cond_3
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p4, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_0

    .line 330
    :cond_4
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    if-ne v0, v2, :cond_0

    .line 332
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    invoke-interface {v0, v2}, Lorg/chromium/printing/PrintingContextInterface;->askUserForSettingsReply(Z)V

    goto :goto_0
.end method

.method public pageCountEstimationDone(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 275
    iput p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mLastKnownMaxPages:I

    .line 277
    :cond_2
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    if-ne v0, v2, :cond_3

    .line 278
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {v1}, Lorg/chromium/printing/Printable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mLastKnownMaxPages:I

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    iget-boolean v2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mNeedNewPdf:Z

    invoke-interface {v1, v0, v2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_0

    .line 283
    :cond_3
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    if-nez v0, :cond_4

    .line 286
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 287
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    invoke-interface {v0, v2}, Lorg/chromium/printing/PrintingContextInterface;->askUserForSettingsReply(Z)V

    goto :goto_0
.end method

.method public pdfWritingDone(Z)V
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    invoke-static {v0}, Lorg/chromium/printing/PrintingControllerImpl;->convertIntegerArrayToPageRanges([I)[Landroid/print/PageRange;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-interface {v1, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFinished([Landroid/print/PageRange;)V

    .line 224
    :goto_1
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    invoke-static {v0}, Lorg/chromium/printing/PrintingControllerImpl;->closeFileDescriptor(I)V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:I

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_1
.end method

.method public setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    .line 188
    iput-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    goto :goto_0
.end method

.method public setPrintingContext(Lorg/chromium/printing/PrintingContextInterface;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingContext:Lorg/chromium/printing/PrintingContextInterface;

    .line 179
    return-void
.end method

.method public startPendingPrint(Lorg/chromium/printing/PrintingContextInterface;)V
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    if-nez v0, :cond_2

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/printing/PrintingContextInterface;->showSystemDialogDone()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mContextFromScriptInitiation:Lorg/chromium/printing/PrintingContextInterface;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    .line 202
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    iget-object v2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {v2}, Lorg/chromium/printing/Printable;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->print(Lorg/chromium/printing/PrintManagerDelegate;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    goto :goto_0
.end method

.method public startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/printing/PrintingControllerImpl;->setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/printing/PrintingControllerImpl;->startPendingPrint(Lorg/chromium/printing/PrintingContextInterface;)V

    goto :goto_0
.end method
