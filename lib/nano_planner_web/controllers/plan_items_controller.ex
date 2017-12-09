defmodule NanoPlannerWeb.PlanItemsController do
  use NanoPlannerWeb, :controller
  alias NanoPlanner.Calendar

  def index(conn, _params) do
    plan_items = Calendar.list_plan_items
    render conn, "index.html", plan_items: plan_items
  end

  def show(conn, params) do
    plan_item = Calendar.get_plan_item!(params["id"])
    render conn, "show.html", plan_item: plan_item
  end
end
