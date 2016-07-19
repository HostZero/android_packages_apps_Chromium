.class public Lorg/chromium/ui/base/ActivityWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mNextRequestCode:I

.field private final mOutstandingPermissionRequests:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/ActivityWindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 67
    invoke-static {p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is not and does not wrap an Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 77
    :cond_1
    new-instance v0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid;Lorg/chromium/ui/base/ActivityWindowAndroid$1;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->setAndroidPermissionDelegate(Lorg/chromium/ui/base/AndroidPermissionDelegate;)V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/ActivityWindowAndroid;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/ActivityWindowAndroid;)I
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method private generateNextRequestCode()I
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit16 v0, v0, 0x3e8

    .line 235
    iget v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 236
    return v0
.end method

.method private getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 177
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object p1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HasRequestedAndroidPermission::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 215
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    .line 148
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 149
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, p0, p2, v1, p3}, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;->onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V

    move v0, v2

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    move v0, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityStopped()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityStarted()V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->keyboardVisibilityPossiblyChanged(Z)V

    .line 231
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 197
    sget-boolean v3, Lorg/chromium/ui/base/ActivityWindowAndroid;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v0, v1

    .line 201
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 202
    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .line 207
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 208
    if-nez v0, :cond_2

    .line 210
    :goto_1
    return v1

    .line 209
    :cond_2
    invoke-interface {v0, p2, p3}, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    move v1, v2

    .line 210
    goto :goto_1
.end method

.method protected registerKeyboardVisibilityCallbacks()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 83
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIsKeyboardShowing:Z

    .line 86
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 99
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 100
    if-nez v0, :cond_0

    move v2, v7

    .line 112
    :goto_0
    return v2

    .line 102
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    move v2, v7

    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 117
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    if-nez v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 123
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    move v0, v2

    .line 129
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected unregisterKeyboardVisibilityCallbacks()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 92
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
