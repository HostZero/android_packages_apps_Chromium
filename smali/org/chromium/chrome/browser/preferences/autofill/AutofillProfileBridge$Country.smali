.class Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;
.super Ljava/lang/Object;
.source "AutofillProfileBridge.java"


# instance fields
.field mCode:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mCode:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mName:Ljava/lang/String;

    return-object v0
.end method
