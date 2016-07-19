.class public Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;
.super Ljava/lang/Object;
.source "AutofillSaveCardInfoBar.java"


# instance fields
.field public issuerIconDrawableId:I

.field public label:Ljava/lang/String;

.field public subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->issuerIconDrawableId:I

    .line 53
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->label:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->subLabel:Ljava/lang/String;

    .line 55
    return-void
.end method
