.class public final Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;
.super Ljava/lang/Object;
.source "DocumentTabModel.java"


# instance fields
.field public canGoBack:Z

.field public currentUrl:Ljava/lang/String;

.field public initialUrl:Ljava/lang/String;

.field public isDirty:Z

.field public isTabStateReady:Z

.field private mTabState:Lorg/chromium/chrome/browser/TabState;

.field public placeholderTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public final tabId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    .line 40
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->initialUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(ILorg/chromium/chrome/browser/TabState;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->mTabState:Lorg/chromium/chrome/browser/TabState;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isTabStateReady:Z

    .line 47
    return-void
.end method


# virtual methods
.method public final getTabState()Lorg/chromium/chrome/browser/TabState;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->mTabState:Lorg/chromium/chrome/browser/TabState;

    return-object v0
.end method

.method public final setTabState(Lorg/chromium/chrome/browser/TabState;)V
    .locals 1

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->mTabState:Lorg/chromium/chrome/browser/TabState;

    .line 55
    return-void
.end method
