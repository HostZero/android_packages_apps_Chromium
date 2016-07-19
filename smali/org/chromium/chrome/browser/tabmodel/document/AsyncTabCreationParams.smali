.class public Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;
.super Ljava/lang/Object;
.source "AsyncTabCreationParams.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDocumentLaunchMode:I

.field private mDocumentStartedBy:I

.field private mIsAffiliated:Z

.field private final mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

.field private final mOriginalIntent:Landroid/content/Intent;

.field private final mRequestId:Ljava/lang/Integer;

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Integer;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Integer;)V

    .line 50
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentLaunchMode:I

    .line 37
    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentStartedBy:I

    .line 111
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    if-eqz p2, :cond_2

    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_2
    if-eqz p3, :cond_4

    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_4
    if-eqz p4, :cond_6

    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_6
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 119
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mRequestId:Ljava/lang/Integer;

    .line 120
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 121
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mOriginalIntent:Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/LoadUrlParams;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Integer;)V

    .line 62
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Integer;)V

    .line 56
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 132
    :cond_0
    return-void
.end method

.method public getDocumentLaunchMode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentLaunchMode:I

    return v0
.end method

.method public getDocumentStartedBy()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentStartedBy:I

    return v0
.end method

.method public getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mLoadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    return-object v0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public isAffiliated()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mIsAffiliated:Z

    return v0
.end method

.method public setDocumentLaunchMode(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentLaunchMode:I

    .line 67
    return-void
.end method

.method public setDocumentStartedBy(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mDocumentStartedBy:I

    .line 71
    return-void
.end method

.method public setIsAffiliated(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->mIsAffiliated:Z

    .line 103
    return-void
.end method
