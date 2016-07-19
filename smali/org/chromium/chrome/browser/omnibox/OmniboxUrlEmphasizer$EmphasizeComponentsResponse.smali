.class public Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;
.super Ljava/lang/Object;
.source "OmniboxUrlEmphasizer.java"


# instance fields
.field public final hostLength:I

.field public final hostStart:I

.field public final schemeLength:I

.field public final schemeStart:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeStart:I

    .line 43
    iput p2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeLength:I

    .line 44
    iput p3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostStart:I

    .line 45
    iput p4, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostLength:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasHost()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScheme()Z
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
