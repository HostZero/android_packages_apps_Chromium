.class public Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;
.super Ljava/lang/Object;
.source "AutofillSaveCardInfoBar.java"


# instance fields
.field public end:I

.field public start:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->start:I

    .line 90
    iput p2, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->end:I

    .line 91
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->url:Ljava/lang/String;

    .line 92
    return-void
.end method
