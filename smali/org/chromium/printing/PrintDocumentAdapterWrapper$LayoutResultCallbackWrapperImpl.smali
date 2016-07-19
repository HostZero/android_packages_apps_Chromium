.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;
.super Ljava/lang/Object;
.source "PrintDocumentAdapterWrapper.java"

# interfaces
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 61
    sget-boolean v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 63
    return-void
.end method


# virtual methods
.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, p1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 68
    return-void
.end method
