.class Lorg/chromium/chrome/browser/ntp/NativePageDialog$1;
.super Ljava/lang/Object;
.source "NativePageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NativePageDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NativePageDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog$1;->this$0:Lorg/chromium/chrome/browser/ntp/NativePageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog$1;->this$0:Lorg/chromium/chrome/browser/ntp/NativePageDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->dismiss()V

    .line 52
    return-void
.end method
