.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$8;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$8;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$8;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->finish()V

    .line 793
    return-void
.end method
