.class public Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;
.super Ljava/lang/Object;
.source "DelayedInvalidationsController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;
    .locals 1

    .prologue
    .line 43
    # getter for: Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;
    invoke-static {}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$LazyHolder;->access$000()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    move-result-object v0

    return-object v0
.end method

.method private static isManualRequest(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    const-string/jumbo v1, "force"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    return v0
.end method

.method private popPendingInvalidations(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    sget-boolean v1, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "delayed_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_0
    const-string/jumbo v1, "delayed_invalidations"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 114
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->clearPendingInvalidations(Landroid/content/Context;)V

    .line 116
    if-nez v0, :cond_1

    new-array v0, v4, [Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 118
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-static {v0}, Lorg/chromium/components/invalidation/PendingInvalidation;->decodeToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, "invalidation"

    const-string/jumbo v1, "Error parsing saved invalidation. Invalidating all."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-array v0, v4, [Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 127
    goto :goto_0
.end method


# virtual methods
.method addPendingInvalidation(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/components/invalidation/PendingInvalidation;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "delayed_account"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "delayed_invalidations"

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 95
    sget-boolean v3, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 99
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    const-string/jumbo v3, "delayed_account"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    iget v3, p3, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    :cond_2
    const-string/jumbo v1, "delayed_invalidations"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 107
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void

    .line 104
    :cond_3
    invoke-virtual {p3}, Lorg/chromium/components/invalidation/PendingInvalidation;->encodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    const-string/jumbo v1, "delayed_invalidations"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public clearPendingInvalidations(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "delayed_account"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string/jumbo v1, "delayed_invalidations"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method notifyInvalidationsOnBackgroundThread(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;-><init>(Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;Landroid/content/Context;Ljava/util/List;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public notifyPendingInvalidations(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "delayed_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->popPendingInvalidations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->notifyInvalidationsOnBackgroundThread(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldNotifyInvalidation(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->isManualRequest(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
