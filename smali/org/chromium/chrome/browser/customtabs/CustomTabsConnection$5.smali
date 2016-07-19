.class Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Landroid/support/customtabs/ICustomTabsCallback;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/support/customtabs/ICustomTabsCallback;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$callback:Landroid/support/customtabs/ICustomTabsCallback;

    iput p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$id:I

    iput-object p4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$callback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$id:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->val$description:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->updateCustomButton(Landroid/os/IBinder;ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
