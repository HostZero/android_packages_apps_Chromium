.class public abstract Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
.super Ljava/lang/Object;
.source "ActivityDelegate.java"


# instance fields
.field private final mIncognitoClass:Ljava/lang/Class;

.field private final mRegularClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->mRegularClass:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->mIncognitoClass:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method public static getActivityForTabId(I)Landroid/app/Activity;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move-object v0, v1

    .line 200
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 193
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 196
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 200
    goto :goto_0
.end method

.method public static getInitialUrlForDocument(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "document"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTabIdFromIntent(Landroid/content/Intent;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->hasParamsWithTabToReparent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const-string/jumbo v1, "com.android.chrome.tab_id"

    invoke-static {p0, v1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "document"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abstract finishAndRemoveTask(ZI)V
.end method

.method public abstract getTasksFromRecents(Z)Ljava/util/List;
.end method

.method protected abstract isActivityDestroyed(Landroid/app/Activity;)Z
.end method

.method public isDocumentActivity(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->mRegularClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract isIncognitoDocumentAccessibleToUser()Z
.end method

.method public isTabAssociatedWithNonDestroyedActivity(ZI)Z
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isValidActivity(ZLandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidActivity(ZLandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 67
    if-nez p2, :cond_0

    move v0, v2

    .line 80
    :goto_0
    return v0

    .line 68
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->mIncognitoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 69
    :goto_1
    if-eqz p1, :cond_4

    const-string/jumbo v0, "com.google.android.apps.chrome.document.IncognitoDocumentActivity"

    .line 72
    :goto_2
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_5

    .line 74
    invoke-static {p2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_1

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 80
    :cond_1
    :goto_3
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->mRegularClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 69
    :cond_4
    const-string/jumbo v0, "com.google.android.apps.chrome.document.DocumentActivity"

    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move v0, v2

    .line 80
    goto :goto_0
.end method

.method public abstract moveTaskToFront(ZI)V
.end method
