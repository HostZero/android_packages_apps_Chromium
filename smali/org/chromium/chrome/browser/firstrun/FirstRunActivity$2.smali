.class final Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;->call()Lorg/chromium/chrome/browser/firstrun/FirstRunPage;

    move-result-object v0

    return-object v0
.end method

.method public final call()Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunActivity$2;->val$clazz:Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 432
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;

    return-object v0
.end method
