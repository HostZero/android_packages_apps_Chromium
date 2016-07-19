.class public interface abstract Lorg/chromium/mojom/mojo/HttpConnectionDelegate;
.super Ljava/lang/Object;
.source "HttpConnectionDelegate.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onReceivedRequest(Lorg/chromium/mojom/mojo/HttpRequest;Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedRequestResponse;)V
.end method

.method public abstract onReceivedWebSocketRequest(Lorg/chromium/mojom/mojo/HttpRequest;Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedWebSocketRequestResponse;)V
.end method
