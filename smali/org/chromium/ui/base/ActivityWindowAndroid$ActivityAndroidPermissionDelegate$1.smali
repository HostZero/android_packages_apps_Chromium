.class Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;
.super Ljava/lang/Object;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

.field final synthetic val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

    iput-object p2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [I

    move v0, v1

    .line 300
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 301
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_1
    aput v2, v3, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    .line 306
    return-void
.end method
