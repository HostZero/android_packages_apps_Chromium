.class public Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;
.super Ljava/lang/Object;
.source "AutofillSaveCardInfoBar.java"


# instance fields
.field public final links:Ljava/util/List;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;->links:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;->text:Ljava/lang/String;

    .line 112
    return-void
.end method
