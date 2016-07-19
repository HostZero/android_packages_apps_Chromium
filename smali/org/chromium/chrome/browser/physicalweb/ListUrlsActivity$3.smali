.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$3;
.super Ljava/lang/Object;
.source "ListUrlsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$3;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$3;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->finish()V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
