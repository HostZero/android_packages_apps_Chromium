.class public Lorg/chromium/chrome/browser/document/DocumentUtils;
.super Ljava/lang/Object;
.source "DocumentUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DocumentUtilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finishAndRemoveTasks(Ljava/util/List;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 103
    const-string/jumbo v1, "DocumentUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Removing task with duplicated data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-object v0
.end method

.method public static finishOtherTasksWithData(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 76
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v2

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 85
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    iget v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 89
    iget-object v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 90
    if-nez v7, :cond_4

    move-object v1, v2

    .line 92
    :goto_2
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v6, v1, :cond_3

    if-eq v6, p1, :cond_2

    .line 94
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_4
    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 97
    :cond_5
    invoke-static {v4}, Lorg/chromium/chrome/browser/document/DocumentUtils;->finishAndRemoveTasks(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method public static finishOtherTasksWithTabID(II)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 44
    if-eq p0, v5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 54
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 58
    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 59
    invoke-static {v3}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 61
    if-ne v3, p0, :cond_2

    if-eq v4, v5, :cond_3

    if-eq v4, p1, :cond_2

    .line 62
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/DocumentUtils;->finishAndRemoveTasks(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLastShownTabIdFromPrefs(Landroid/content/Context;Z)I
    .locals 3

    .prologue
    .line 165
    const-string/jumbo v0, "com.google.android.apps.chrome.document"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    if-eqz p1, :cond_0

    const-string/jumbo v0, "last_shown_tab_id.incognito"

    .line 170
    :goto_0
    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 167
    :cond_0
    const-string/jumbo v0, "last_shown_tab_id.regular"

    goto :goto_0
.end method

.method public static getTaskClassName(Landroid/app/ActivityManager$AppTask;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 144
    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 147
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    const-string/jumbo v2, "DocumentUtilities"

    const-string/jumbo v3, "Failed to retrieve task info: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
