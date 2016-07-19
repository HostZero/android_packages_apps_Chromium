.class public interface abstract Lorg/chromium/mojom/mojo/UrlLoader;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract followRedirect(Lorg/chromium/mojom/mojo/UrlLoader$FollowRedirectResponse;)V
.end method

.method public abstract queryStatus(Lorg/chromium/mojom/mojo/UrlLoader$QueryStatusResponse;)V
.end method

.method public abstract start(Lorg/chromium/mojom/mojo/UrlRequest;Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;)V
.end method
