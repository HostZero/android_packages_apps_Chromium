.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$1;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 49
    return-void
.end method
