.class public interface abstract Lorg/chromium/mojom/mojo/shell/mojom/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
.end method

.method public abstract connect(Lorg/chromium/mojom/mojo/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;)V
.end method
