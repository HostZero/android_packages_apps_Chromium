.class final Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;
.super Ljava/lang/Object;
.source "AutofillProfileBridge.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    check-cast p1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;

    check-cast p2, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;->compare(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;)I

    move-result v0

    return v0
.end method

.method public final compare(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;)I
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mName:Ljava/lang/String;

    iget-object v2, p2, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mCode:Ljava/lang/String;

    iget-object v1, p2, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 94
    :cond_0
    return v0
.end method
