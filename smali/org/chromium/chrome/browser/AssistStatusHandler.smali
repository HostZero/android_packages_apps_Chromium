.class public Lorg/chromium/chrome/browser/AssistStatusHandler;
.super Ljava/lang/Object;
.source "AssistStatusHandler.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAssistSupported:Ljava/lang/Boolean;

.field private final mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

.field private mSetAssistBlockedMethod:Ljava/lang/reflect/Method;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mActivity:Landroid/app/Activity;

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/AssistStatusHandler$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/AssistStatusHandler$1;-><init>(Lorg/chromium/chrome/browser/AssistStatusHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 42
    return-void
.end method


# virtual methods
.method public isAssistSupported()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 60
    return-void
.end method

.method public final updateAssistState()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->isAssistSupported()Z

    move-result v2

    .line 86
    iget-object v3, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mAssistSupported:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mAssistSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v2, :cond_3

    .line 87
    :cond_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSetAssistBlockedMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 89
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string/jumbo v4, "setAssistBlocked"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSetAssistBlockedMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 95
    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 97
    :try_start_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mSetAssistBlockedMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v2, :cond_4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler;->mAssistSupported:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 97
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    .line 92
    :catch_3
    move-exception v0

    goto :goto_0
.end method
