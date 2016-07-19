.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "CustomTabActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mTabObserver:Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 111
    return-void
.end method
