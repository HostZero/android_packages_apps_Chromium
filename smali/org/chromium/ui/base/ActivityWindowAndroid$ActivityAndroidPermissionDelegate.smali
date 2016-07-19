.class Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;
.super Ljava/lang/Object;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Lorg/chromium/ui/base/AndroidPermissionDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid;Lorg/chromium/ui/base/ActivityWindowAndroid$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid;)V

    return-void
.end method

.method private requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 317
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    # invokes: Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I
    invoke-static {v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$300(Lorg/chromium/ui/base/ActivityWindowAndroid;)I

    move-result v1

    .line 320
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    # getter for: Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;
    invoke-static {v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$400(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 322
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 257
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 260
    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 264
    goto :goto_0

    .line 269
    :cond_3
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    # invokes: Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$100(Lorg/chromium/ui/base/ActivityWindowAndroid;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v0, v0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 281
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    # getter for: Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$200(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
