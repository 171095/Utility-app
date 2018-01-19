require 'test_helper'

class ProSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pro_skill = pro_skills(:one)
  end

  test "should get index" do
    get pro_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_pro_skill_url
    assert_response :success
  end

  test "should create pro_skill" do
    assert_difference('ProSkill.count') do
      post pro_skills_url, params: { pro_skill: { professional_id: @pro_skill.professional_id, skill_id: @pro_skill.skill_id } }
    end

    assert_redirected_to pro_skill_url(ProSkill.last)
  end

  test "should show pro_skill" do
    get pro_skill_url(@pro_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_pro_skill_url(@pro_skill)
    assert_response :success
  end

  test "should update pro_skill" do
    patch pro_skill_url(@pro_skill), params: { pro_skill: { professional_id: @pro_skill.professional_id, skill_id: @pro_skill.skill_id } }
    assert_redirected_to pro_skill_url(@pro_skill)
  end

  test "should destroy pro_skill" do
    assert_difference('ProSkill.count', -1) do
      delete pro_skill_url(@pro_skill)
    end

    assert_redirected_to pro_skills_url
  end
end
