.class final Lorg/chromium/chrome/browser/ChromeActivity$1;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;I)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;I)V

    return-object v0
.end method
