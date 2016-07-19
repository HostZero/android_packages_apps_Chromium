.class Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;
.super Ljava/lang/Object;
.source "NativeInitializationController.java"


# instance fields
.field public final data:Landroid/content/Intent;

.field public final requestCode:I

.field public final resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->requestCode:I

    .line 55
    iput p2, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->resultCode:I

    .line 56
    iput-object p3, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$ActivityResult;->data:Landroid/content/Intent;

    .line 57
    return-void
.end method
