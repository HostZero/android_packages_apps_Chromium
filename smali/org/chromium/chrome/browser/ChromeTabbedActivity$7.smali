.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

.field final synthetic val$freIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;->val$freIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;->val$freIntent:Landroid/content/Intent;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 948
    return-void
.end method
