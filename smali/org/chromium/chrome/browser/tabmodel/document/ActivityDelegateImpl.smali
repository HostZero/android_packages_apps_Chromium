.class public Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;
.super Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
.source "ActivityDelegateImpl.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 37
    return-void
.end method

.method private getTask(ZI)Landroid/app/ActivityManager$AppTask;
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 75
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 76
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 78
    if-ne v3, p2, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finishAndRemoveTask(ZI)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->getTask(ZI)Landroid/app/ActivityManager$AppTask;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 69
    :cond_0
    return-void
.end method

.method public getTasksFromRecents(Z)Ljava/util/List;
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 47
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 51
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 53
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->getInitialUrlForDocument(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v4, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    invoke-direct {v4, v3, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method

.method protected isActivityDestroyed(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isIncognitoDocumentAccessibleToUser()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 89
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 90
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTaskToFront(ZI)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;->getTask(ZI)Landroid/app/ActivityManager$AppTask;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->moveToFront()V

    .line 63
    :cond_0
    return-void
.end method
