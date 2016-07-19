.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$1;
.super Ljava/lang/Object;
.source "ListUrlsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->hideBottomBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$000(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V

    .line 111
    return-void
.end method
